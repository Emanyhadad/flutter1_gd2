import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/BottomNavigationBar/postsProvider.dart';
import 'package:provider/provider.dart';

import '../../PostAssignment/data.dart';
import '../../PostAssignment/post_widget.dart';

class BNBFavoritePage extends StatefulWidget {
  @override
  State<BNBFavoritePage> createState() => _BNBFavoritePageState();
}

class _BNBFavoritePageState extends State<BNBFavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PostsProvider>(
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
    );
  }
}