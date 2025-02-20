pragma solidity >=0.5.0;

contract ToDoList{
    constructor() public {
    createTask("Task Created");
    }

    uint public taskCount=0;

    struct Task{
        uint id;
        string content;
        bool completed;
    }

    mapping (uint=>Task) public tasks;

    event TaskCreated(
      uint id,
      string content,
      bool completed
    );

    function createTask(string memory _content) public {
    taskCount ++;
    tasks[taskCount] = Task(taskCount, _content, false);
    emit TaskCreated(taskCount,_content,false);
  }
}
