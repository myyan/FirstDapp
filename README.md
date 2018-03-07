# 去中心化应用demo


## 概述

本项目教你如何在区块链上面建一个区中心化应用

## 依赖

* ethereumjs-testrpc 
* web3@0.20.1
* solc

用npm安装缺少的依赖[npm](https://www.npmjs.com/).  nodejs 的安装就不做概述了

```
> git clone https://github.com/myyan/FirstDapp.git
> cd FirstDapp
> npm install  安装依赖
```

## 使用

在依赖安装完成后执行下面的命令 ethereum_test_rpc
```
node_modules/ethereumjs-testrpc/build/cli.node.js
```
接着打开node的终端 执行下面命令在区块链上部署智能合约

```
# heiqie /first_dapp on git:master o [20:05:18]
$ node
> Web3 = require('web3')
> web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
> code = fs.readFileSync('Voting.sol').toString()
> solc = require('solc')
> compiledCode = solc.compile(code)
> abiDefinition = JSON.parse(compiledCode.contracts[':Voting'].interface)
> VotingContract = web3.eth.contract(abiDefinition)
> byteCode = compiledCode.contracts[':Voting'].bytecode
> deployedContract = VotingContract.new(['Rama','Nick','Jose'],{data: byteCode, from: web3.eth.accounts[0], gas: 4700000})
> deployedContract.address
> contractInstance = VotingContract.at(deployedContract.address)
```



## 参考

本项目的代码参考了 [maheshmurthy](https://gist.github.com/maheshmurthy). 这里我做了一些封装使得项目上手更加快捷点
