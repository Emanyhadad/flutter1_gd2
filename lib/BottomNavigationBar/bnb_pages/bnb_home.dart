import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/BottomNavigationBar/postsProvider.dart';
import 'package:flutter_assignment/PostAssignment/post_widget.dart';
import 'package:provider/provider.dart';

import '../../PostAssignment/data.dart';
import '../../PostAssignment/util.dart';


class BNBHomePage extends StatelessWidget {
  List<PostModel> convertMapsToPostModel() {
    return postData.map((e) => PostModel(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PostsProvider>(
      builder: (context, postsProvider,_) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(postsProvider.data.length.toString()),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: postsProvider.data.length,
                itemBuilder: (context, index) {
                  return PostWidget(postsProvider.data[index]);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
