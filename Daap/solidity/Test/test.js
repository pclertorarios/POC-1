const MaterialContracts = artifacts.require("MaterialContract");

contract("MaterialContract", ()=>{
    before(async  () => {
        this.materialContract = await MaterialContracts.deployed();
    })
    it('migrate deployed successfully', async()=> {
        const address = this.materialContract.address

        assert.notEqual(address, null); 
        assert.notEqual(address, 0x0);
        assert.notEqual(address, undefined);
        assert.notEqual(address, "");
    })
})

contract("MaterialContract", ()=>{
    before(async  () => {
        this.materialContract = await MaterialContracts.deployed();
    })
    it("Recibe informacion", async()=> {
        await this.materialContract.registerMaterial("Tijeras", "Utiles", 20);
        const cantidad = await this.materialContract.materialSize();

        assert.equal(cantidad.toNumber() ,4); 

    })
})