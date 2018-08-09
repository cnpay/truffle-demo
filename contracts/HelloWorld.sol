pragma solidity ^0.4.2;

/**
本地安装remix
开始节点要采矿
由户unlock,不然metamask会拦截
 */

contract HelloWorld {

    function greet(string a) public pure returns(string){
        return a;
    }
    
}