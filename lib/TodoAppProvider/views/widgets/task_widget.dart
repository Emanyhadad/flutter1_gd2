import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/TodoApp/data/task.dart';
import 'package:provider/provider.dart';

import '../../../provider_data.dart';

class TaskWidget extends StatefulWidget {
  Task task;

  TaskWidget(this.task);

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
          Provider.of<ProviderData>(context,listen: false).CompleteTask(widget.task);
          setState(() {});
        },
        title: Text(widget.task.name ?? "Task"),
      ),
    );
  }
}
