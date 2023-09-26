import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../provider_data.dart';
import 'all_task.dart';
import 'complete_task.dart';
import 'incomplete_task.dart';

class MainPage extends StatelessWidget {
  ProviderData providerData;

  MainPage(this.providerData);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.list),
              ),
              Tab(
                icon: Icon(Icons.done),
              ),
              Tab(
                icon: Icon(Icons.cancel_outlined),
              )
            ],
          )),
          body: TabBarView(children: [
            AllTask(providerData),
            CompleteTask(providerData),
            InCompleteTask(providerData)
          ]),
        ));
  }
}
