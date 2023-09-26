import 'package:flutter/material.dart';

import '../PostAssignment/data.dart';
import '../PostAssignment/util.dart';

class PostsProvider extends ChangeNotifier {
  List<PostModel> data = postData.map((e) => PostModel(e)).toList();

  toggleFav(PostModel postModel){
    postModel.isLiked = !postModel.isLiked!;
    notifyListeners();
  }
}