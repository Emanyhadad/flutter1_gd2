import 'package:flutter/cupertino.dart';

import '../../data/tasks_data.dart';
import '../widgets/task_widget.dart';

class CompleteTask extends StatelessWidget {
  Function function;

  CompleteTask(this.function);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: taskList.where((element) => element.complete).length,
      itemBuilder: (context, index) {
        return TaskWidget(function,
            taskList.where((element) => element.complete).toList()[index]);
      },
    );
  }
}
