var toDoList = artifacts.require("./TodoList.sol");

module.exports=function(deployer)
{
    deployer.deploy(toDoList);
}