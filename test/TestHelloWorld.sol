pragma solidity ^0.4.2;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/HelloWorld.sol";

contract TestHelloWorld {

  function testGreet() public{
    HelloWorld hello = HelloWorld(DeployedAddresses.HelloWorld());
    string memory result = "hello";
    Assert.equal(hello.greet(result),result,"输入输出应该相等");
  }

}
