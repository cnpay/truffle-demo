var Assert = artifacts.require("./Assert.sol");
var HelloWorld = artifacts.require("./HelloWorld.sol");

module.exports = function(deployer) {
  deployer.deploy(Assert);
  deployer.link(Assert,HelloWorld); //将合约和依赖库进行 链接
  deployer.deploy(HelloWorld);
};
