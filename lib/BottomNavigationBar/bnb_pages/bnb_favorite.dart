import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/BottomNavigationBar/postsProvider.dart';
import 'package:flutter_assignment/PostAssignment/util.dart';
import 'package:provider/provider.dart';

import '../../PostAssignment/data.dart';
import '../../PostAssignment/post_widget.dart';

class BNBFavoritePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Selector<PostsProvider, List<PostModel>>(
      builder: (context, value, child) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                value
                    .where((element) => element.isLiked == true)
                    .length
                    .toString(),
              ),
            ),
            // this is the test
            Expanded(
              child: InkWell(
                onTap: () {

                },
                child: ListView.builder(
                  itemCount:
                      value.where((element) => element.isLiked == true).length,
                  itemBuilder: (context, index) {
                    return PostWidget(value
                        .where((element) => element.isLiked == true)
                        .toList()[index]);
                  },
                ),
              ),
            ),
          ],
        );
      },
      selector: (p0, p1) {
        return p1.data;
      },
    );
    /*return Consumer<PostsProvider>(
      builder: (context, postsProvider, _) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                postsProvider.data
                    .where((element) => element.isLiked == true)
                    .length
                    .toString(),
              ),
            ),
            // this is the test
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {});
                },
                child: ListView.builder(
                  itemCount: postsProvider.data
                      .where((element) => element.isLiked == true)
                      .length,
                  itemBuilder: (context, index) {
                    return PostWidget(postsProvider.data
                        .where((element) => element.isLiked == true)
                        .toList()[index]);
                  },
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {});
                },
                child: ListView.builder(
                  itemCount: postsProvider.data
                      .where((element) => element.isLiked == true)
                      .length,
                  itemBuilder: (context, index) {
                    return PostWidget(postsProvider.data
                        .where((element) => element.isLiked == true)
                        .toList()[index]);
                  },
                ),
              ),
            ),
          ],
        );
      },
    );*/
  }
}
