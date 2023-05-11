//SPDX-License-Identifier: CHIBOLITODEV
pragma solidity 0.8.16;

contract MaterialContract{

    constructor(){
        registerMaterial("Lapiz","Utiles", 100);
        registerMaterial("Papel higienico", "Sanidad",200);
        registerMaterial("Borrador","Utiles", 50);
        
    }

    struct Material{
        uint id;
        string nombre;
        string categoria;
        uint cantidad;
        uint fechaRevision;
        address usuarioR;
        bool esActivo;
        }

    Material[] private listMaterial;
    Material[] private list;
    
    function materialSize() public view returns(uint){
        return listMaterial.length;
    }

    function registerMaterial(string memory _nombre,string memory _categoria, uint cantidad ) public {
        Material memory _m = Material(listMaterial.length, _nombre, _categoria, cantidad, block.timestamp, msg.sender, true);
        listMaterial.push(_m);
    }

    function getMaterials() public view returns (Material[] memory) {
        return list;
    }

    function setList() public {
        delete list;
        uint size = materialSize();
        Material memory _material;
        for(uint i = 0; i < size; i++){
            _material = listMaterial[i];
             if(_material.esActivo == true){
                 list.push(_material);   
             }
            delete _material;
        }
    }

    function modificarMaterial(string memory _nombre, string memory _categoria, uint _cantidad, uint id) public {
        Material memory _mat  = listMaterial[id];
        _mat.nombre = _nombre;
        _mat.cantidad = _cantidad;
        _mat.categoria = _categoria;
        listMaterial[id] = _mat;
    }

    function eliminarMaterial(uint id) public {
        Material memory _mat  = listMaterial[id];
        _mat.esActivo = false;
        listMaterial[id] = _mat;
    }
}