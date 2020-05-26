import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            // "widget" refers to the "StatefulWidget". It passes over the object into the State,
            // so it get the tasks property when we create a new TasksList
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallback: (bool currentCheckboxState) {
              setState(() {
//                tasks[index].isDone = currentCheckboxState;
                widget.tasks[index].toggleDone();
              });
            },
          );
        },
        itemCount: widget.tasks.length);
  }
}
