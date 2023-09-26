import 'package:flutter/cupertino.dart';
import 'package:flutter_assignment/TodoApp/views/widgets/task_widget.dart';

import '../../data/tasks_data.dart';

class AllTask extends StatelessWidget {
  Function function;

  AllTask(this.function);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: taskList.length,
      itemBuilder: (context, index) {
        return TaskWidget(function,taskList.toList()[index]);
      },
    );
  }
}
