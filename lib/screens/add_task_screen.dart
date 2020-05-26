import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class AddTaskScreen extends StatelessWidget {
//  final List<Task> tasks;
  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
//      color: Color(0xFF757575),
//      child: Container(
      padding: EdgeInsets.only(top: 10, left: 30, right: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 20,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 5),
              isDense: true,
              hintText: 'Enter your new task here',
              hintStyle: TextStyle(
                color: Colors.black54,
              ),
            ),
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          FlatButton(
            padding: EdgeInsets.symmetric(horizontal: 40),
            color: Colors.lightBlueAccent,
            onPressed: () {
              addTaskCallback(newTaskTitle);
// correct to here
            },
            disabledColor: Colors.red,
//            onPressed: () {
//              setState(() {
//                Task newTask = Task(name: taskText);
//                widget.tasks.add(newTask);
//              });
//            },
            child: Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
//      ),
    );
  }
}
