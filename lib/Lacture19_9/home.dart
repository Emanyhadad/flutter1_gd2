import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("الرئيسية", style: TextStyle(color: Colors.white)),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.red,toolbarHeight: 50),
    );
  }
}
