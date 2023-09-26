import 'package:flutter/material.dart';

import '../PostAssignment/data.dart';
import '../PostAssignment/util.dart';

class PostsProvider extends ChangeNotifier {
  PostsProvider(){
    fillData();
  }
  List<PostModel> data =[];
  fillData(){
    data =  postData.map((e) => PostModel(e)).toList();
  }

  toggleFav(PostModel postModel){
  int x =   data.indexOf(postModel);
  // data[x].isLiked = !data[x].isLiked;
  data.removeAt(x);
    // postModel.isLiked = !postModel.isLiked!;
    notifyListeners();
  }
}