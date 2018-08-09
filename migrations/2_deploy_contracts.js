var Assert = artifacts.require("./Assert.sol");
var HelloWorld = artifacts.require("./HelloWorld.sol");

module.exports = function(deployer) {
  deployer.deploy(Assert);
  deployer.link(Assert,HelloWorld)
  deployer.deploy(HelloWorld);
};
