### 安装
cnpm i -g truffle
### 初始化项目(下载unbox示例代码)
mkdir truffle-demo
truffle unbox
### 启动truffle版testrpc(ganache-cli)
truffle develop
### 验证并配置truffle.js
1. 主机及端口
2. 部署合约gas数量要够大(1000000）
3. 部署合约的帐户地址(习惯选第2个帐户)
### 编译/部署
truffle compile
truffle migrate (保存合约的地址)
### 验证
truffle console
MetaCoin.at("{{合约地址}}").getBalance.call("{{帐户地址}}")
### 增加自定义合约
参照2_deploy_contracts.js增加migration
### 增加测试(TestHelloWorld.sol)
增加truffle.js里面的gas设置(这个是部署gas约束)
不用truffle develop启动测试链，改用ganache-cli，增加块约束:
ganache-cli --gasLimit 16721975 --gasPrice 100000000000

### 参考文档
1. https://truffleframework.com/docs/getting_started/installation

### 补充
1. 日常小的不一致问题，可以尝试清除build目录