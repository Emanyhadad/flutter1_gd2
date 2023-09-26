import 'package:flutter/cupertino.dart';

import '../../../provider_data.dart';
import '../widgets/task_widget.dart';

class CompleteTask extends StatelessWidget {
  ProviderData providerData ;

  CompleteTask(this.providerData);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: providerData.taskList.where((element) => element.complete).length,
      itemBuilder: (context, index) {
        return TaskWidget(
            providerData.taskList.where((element) => element.complete).toList()[index]);
      },
    );
  }
}
