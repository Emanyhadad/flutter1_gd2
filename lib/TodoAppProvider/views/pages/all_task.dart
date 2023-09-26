import 'package:flutter/cupertino.dart';
import 'package:flutter_assignment/TodoAppProvider/views/widgets/task_widget.dart';
import 'package:flutter_assignment/provider_data.dart';


class AllTask extends StatelessWidget {
  ProviderData providerData;

  AllTask(this.providerData);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: providerData.taskList.length,
      itemBuilder: (context, index) {
        return TaskWidget(providerData.taskList.toList()[index]);
      },
    );
  }
}
