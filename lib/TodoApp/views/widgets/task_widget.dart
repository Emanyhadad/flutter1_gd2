import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/TodoApp/data/task.dart';

class TaskWidget extends StatefulWidget {
  Task task;

  Function function;

  TaskWidget(this.function,this.task);
  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: widget.task.complete ? Colors.lightBlueAccent : Colors.red),
      child: CheckboxListTile(
        value: widget.task.complete,
        onChanged: (value) {
          widget.task.complete = !(widget.task.complete);
          value = !value!;
          setState(() {});
          widget.function();
        },
        title: Text(widget.task.name ?? "Task"),
      ),
    );
  }
}
