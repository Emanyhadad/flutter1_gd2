import 'package:flutter_assignment/PostAssignment/util.dart';

import '../Assignment2_Meal/util.dart';

List<Map> postData = [
  {
    "image":
        "https://images.unsplash.com/photo-1508138221679-760a23a2285b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
    "content": "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
    "isFavourite": true,
    "user": {
      "image":
          "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80",
      "name": "John Doe"
    }
  },
  {
    "image":
        "https://images.unsplash.com/photo-1527731086039-8e31150599cf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80",
    "content":
        "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    "isFavourite": false,
    "user": {
      "image":
          "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80",
      "name": "Jane Smith"
    }
  },
  {
    "image":
        "https://images.unsplash.com/photo-1503023816554-bee7fc3d8442?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1364&q=80",
    "content":
        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.",
    "isFavourite": true,
    "user": {
      "image":
          "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80",
      "name": "Michael Johnson"
    }
  },
  {
    "image":
        "https://images.unsplash.com/photo-1518895949257-7621c3c786d7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1288&q=80",
    "content":
        "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.",
    "isFavourite": false,
    "user": {
      "image":
          "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80",
      "name": "Emily Davis"
    }
  },
  {
    "image":
        "https://images.unsplash.com/photo-1460039230329-eb070fc6c77c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1335&q=80",
    "content":
        "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim.",
    "isFavourite": true,
    "user": {
      "image":
          "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80",
      "name": "Alex Johnson"
    }
  },
  {
    "image":
        "https://images.unsplash.com/photo-1460039230329-eb070fc6c77c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1335&q=80",
    "content": "Sunt in culpa qui officia deserunt mollit anim id est laborum.",
    "isFavourite": false,
    "user": {
      "image":
          "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80",
      "name": "Sophia Miller"
    }
  },
  {
    "image":
        "https://images.unsplash.com/photo-1455659817273-f96807779a8a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    "content":
        "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.",
    "isFavourite": true,
    "user": {
      "image":
          "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80",
      "name": "David Brown"
    }
  },
  {
    "image":
        "https://images.unsplash.com/photo-1507608616759-54f48f0af0ee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80",
    "content":
        "Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.",
    "isFavourite": false,
    "user": {"image": "user_image_url_8.jpg", "name": "Emma Anderson"}
  },
  {
    "image":
        "https://images.unsplash.com/photo-1455659817273-f96807779a8a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    "content":
        "Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.",
    "isFavourite": true,
    "user": {
      "image":
          "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80",
      "name": "Matthew Taylor"
    }
  },
  {
    "image":
        "https://images.unsplash.com/photo-1527731086039-8e31150599cf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80",
    "content":
        "Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.",
    "isFavourite": false,
    "user": {
      "image":
          "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80",
      "name": "Olivia Clark"
    }
  }
];
List<PostModel> postModelList = postData.map((e) => PostModel(e)).toList();
Map map1 = {
  "image":
      "https://images.unsplash.com/photo-1508138221679-760a23a2285b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
  "content": "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
  "isFavourite": true,
  "user": {
    "image":
        "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80",
    "name": "John Doe"
  }
};

List<ItemCategory> fakeItems = [
  ItemCategory('Item 1', "10.00"),
  ItemCategory('Item 2', "15.00"),
  ItemCategory('Item 3', "20.00")
];
