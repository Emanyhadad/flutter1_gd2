import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../PostAssignment/util.dart';

class Lacture extends StatefulWidget {
  PostModel postModel;

  Lacture(this.postModel);
  @override
  State<Lacture> createState() {
    return  LactureState();
  }
}

class LactureState extends State<Lacture> {
  bool v= false;
  String? content="";
  bool isVis =false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  child: Image.network(
                    fit: BoxFit.cover,
                    widget.postModel.user!.imageUrl ?? " ",
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(Icons.supervised_user_circle);
                    },
                    width: 30,
                    height: 30,
                  ),
                ),
                SizedBox(width: 5,),
                Text(widget.postModel.user!.name?? "user"),
              ],
            ),
          ),
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                color: Colors.white54,
                border: Border.all(color: Colors.black38),
                borderRadius: BorderRadius.circular(15)),
            margin: EdgeInsets.all(10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    widget.postModel.image ?? " ",
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Center(
                        child: Icon(Icons.image),
                      );
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() { widget.postModel.isLiked=!(widget.postModel.isLiked??false);});
                      },
                      child: Icon(
                        Icons.favorite,
                        color: (widget.postModel.isLiked! ) ? Colors.red : Colors.grey,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                    child: Text(widget.postModel.content ?? ""),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      onChanged: (value) {
                        content=value;
                      },decoration: InputDecoration(
                      suffixIcon: InkWell(
                        child: Icon(Icons.send_outlined),
                        onTap: () {
                          log(content! );
                          setState(() {
                            isVis=true;
                          });
                        },
                      ),),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Visibility(
                      child: Container(
                          color: Colors.lightBlueAccent,
                          child: Text(content!,style: TextStyle(fontSize: 25,color: Colors.black),)),
                      visible: isVis ,
                    ),
                  ),
                ]),
          ),

        ],
      ),
    );;
  }
}
