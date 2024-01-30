import 'dart:io';

List tasks = [];
void main() {
  print("====Welcome To mY Todo Application=====");
  var isContinue = true;
  while (isContinue) {
    print("Press 1 For Add Task");
    print("Press 2 For View Task");
    print("Press 3 For Update Task");
    print("Press 4 For Delete Task");
    print("Press 5 or Any Key For Exit");

    var userInput = stdin.readLineSync();
    if (userInput == "1") {
      addTask();
    } else if (userInput == "2") {
      ViewTask();
    } else if (userInput == "3") {
      updateTask();
    } else if (userInput == "4") {
      deleteTask();
    } else
      () {
        print("Programe Is Exit");
        isContinue = false;
      };
  }
}

addTask() {
  print("Enter Your Task");
  var task = stdin.readLineSync();
  tasks.add(task);
  print("Task Added -> $task");
}

ViewTask() {
  for (var i = 0; i < tasks.length; i++) {
    print("$i .  Task : ${tasks[i]}");
  }
}

updateTask() {}
deleteTask() {}
Exit() {}
