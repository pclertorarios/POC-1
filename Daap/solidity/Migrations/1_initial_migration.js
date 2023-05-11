const MaterialContracts = artifacts.require("MaterialContract");

module.exports = function(deployer) {
    deployer.deploy(MaterialContracts)
};