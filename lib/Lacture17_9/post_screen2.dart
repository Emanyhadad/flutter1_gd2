import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_assignment/Lacture17_9/Statefull.dart';

import '../PostAssignment/data.dart';
import '../PostAssignment/util.dart';

class PostScreen2 extends StatefulWidget {
  @override
  State<PostScreen2> createState() => _PostScreen2State();
}

class _PostScreen2State extends State<PostScreen2> {
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
        return Lacture(convertMapsToPostModel()[index]);
      },),
    );
  }
}
