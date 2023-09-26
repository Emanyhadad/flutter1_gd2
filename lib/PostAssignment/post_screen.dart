import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/PostAssignment/post_widget.dart';
import 'package:flutter_assignment/PostAssignment/util.dart';


import 'data.dart';

class PostScreen extends StatelessWidget {
  List<PostModel> convertMapsToPostModel(){
    return postData.map((e) => PostModel(e)).toList();
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Social Media App")),
      body: ListView.builder(
        itemCount: postData.length,
        itemBuilder: (context, index) {
        return PostWidget(convertMapsToPostModel()[index]);
      },),
    );
  }
}
