import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/BottomNavigationBar/postsProvider.dart';
import 'package:flutter_assignment/PostAssignment/util.dart';
import 'package:provider/provider.dart';

class PostWidget extends StatefulWidget {
  PostModel postModel;


  PostWidget(this.postModel);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
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
              SizedBox(
                width: 5,
              ),
              Text(widget.postModel.user!.name ?? "user"),
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
                InkWell(
                  onTap: () {
                   // widget.postModel.isLiked=!(widget.postModel.isLiked??false) ;
                    Provider.of<PostsProvider>(context,listen: false).toggleFav(widget.postModel);
                  },
                  child: Icon(
                    Icons.favorite,
                    color: (widget.postModel.isLiked ?? false) ? Colors.red : Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  child: Text(widget.postModel.content ?? ""),
                ),
              ]),
        ),
      ],
    );
  }
}
