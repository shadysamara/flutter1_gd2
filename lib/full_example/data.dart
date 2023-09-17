import 'package:flutter_application_2/full_example/post_model.dart';

List<Map> postsData = [
  {
    "image":
        "https://images.unsplash.com/photo-1516684732162-798a0062be99?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2592&q=80",
    "content": "This is the content of the first post.",
    "isFavourite": true,
    "user": {
      "image":
          "https://plus.unsplash.com/premium_photo-1689632031083-518b012767a4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80",
      "name": "User One"
    }
  },
  {
    "image":
        "https://images.unsplash.com/photo-1679678691328-54929d271c3f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2938&q=80",
    "content": "Content for the second post goes here.",
    "isFavourite": false,
    "user": {
      "image":
          "https://plus.unsplash.com/premium_photo-1689632031083-518b012767a4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80",
      "name": "User Two"
    }
  },
  {
    "image":
        "https://images.unsplash.com/photo-1469474968028-56623f02e42e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2948&q=80",
    "content": "Third post content is here.",
    "isFavourite": true,
    "user": {
      "image":
          "https://images.unsplash.com/photo-1472214103451-9374bd1c798e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80",
      "name": "User Three"
    }
  },
  {
    "image":
        "https://images.unsplash.com/photo-1501854140801-50d01698950b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2600&q=80",
    "content": "Content of the fourth post.",
    "isFavourite": false,
    "user": {
      "image":
          "https://plus.unsplash.com/premium_photo-1689632031083-518b012767a4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80",
      "name": "User Four"
    }
  },
  {
    "image":
        "https://images.unsplash.com/photo-1426604966848-d7adac402bff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80",
    "content": "Fifth post content goes here.",
    "isFavourite": true,
    "user": {
      "image":
          "https://plus.unsplash.com/premium_photo-1689632031083-518b012767a4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80",
      "name": "User Five"
    }
  },
  {
    "image":
        "https://images.unsplash.com/photo-1683009427619-a1a11b799e05?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80",
    "content": "Content for the sixth post.",
    "isFavourite": false,
    "user": {
      "image":
          "https://plus.unsplash.com/premium_photo-1689632031083-518b012767a4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80",
      "name": "User Six"
    }
  },
  {
    "image":
        "https://images.unsplash.com/photo-1433086966358-54859d0ed716?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3087&q=80",
    "content": "This is the content of the seventh post.",
    "isFavourite": true,
    "user": {
      "image":
          "https://plus.unsplash.com/premium_photo-1689632031083-518b012767a4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80",
      "name": "User Seven"
    }
  },
  {
    "image":
        "https://images.unsplash.com/photo-1465146344425-f00d5f5c8f07?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2952&q=80",
    "content": "Eighth post content is here.",
    "isFavourite": false,
    "user": {
      "image":
          "https://plus.unsplash.com/premium_photo-1689632031083-518b012767a4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80",
      "name": "User Eight"
    }
  },
  {
    "image":
        "https://images.unsplash.com/photo-1470071459604-3b5ec3a7fe05?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3074&q=80",
    "content": "Content of the ninth post.",
    "isFavourite": true,
    "user": {
      "image":
          "https://plus.unsplash.com/premium_photo-1689632031083-518b012767a4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80",
      "name": "User Nine"
    }
  },
  {
    "image":
        "https://images.unsplash.com/photo-1447752875215-b2761acb3c5d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80",
    "content": "Tenth post content goes here.",
    "isFavourite": false,
    "user": {
      "image":
          "https://plus.unsplash.com/premium_photo-1689632031083-518b012767a4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80",
      "name": "User Ten"
    }
  }
];
