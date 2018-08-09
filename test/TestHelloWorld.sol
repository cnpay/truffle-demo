pragma solidity ^0.4.2;

import "../contracts/Assert.sol";
import "../contracts/HelloWorld.sol";

contract TestHelloWorld {

    function testGreet() public{
    // HelloWorld hello = HelloWorld(DeployedAddresses.HelloWorld());
        HelloWorld hello = new HelloWorld(); //这种方式测试比较简单
        string memory result = "hello";
        Assert.equal(hello.greet(result),result,"输入输出应该相等");
    }

    function testGreet2() public{
        HelloWorld hello = new HelloWorld();
        string memory test = "nidaye";
        Assert.equal(hello.greet(test),"nidaye2","这个输入输出不相等");
    }

}
