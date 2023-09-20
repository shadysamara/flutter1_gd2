import 'package:flutter/material.dart';
import 'package:flutter_application_2/full_example/post_model.dart';

class PostDetailsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PostDetailsScreenState();
  }
}

class PostDetailsScreenState extends State<PostDetailsScreen> {
  PostModel postModel = PostModel.fromMap({
    "image":
        "https://images.unsplash.com/photo-1470071459604-3b5ec3a7fe05?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3074&q=80",
    "content": "Content of the ninth post.",
    "isFavourite": false,
    "user": {
      "image":
          "https://plus.unsplash.com/premium_photo-1689632031083-518b012767a4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80",
      "name": "User Nine"
    }
  });
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Details"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            postModel.image ?? '',
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          postModel.isLiked = !postModel.isLiked!;
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: postModel.isLiked! ? Colors.red : Colors.grey,
                        ),
                      ),
                      Icon(Icons.comment),
                      Text(postModel.comments!.length.toString())
                    ],
                  ),
                  ...postModel.comments!.map((e) => Text(e)).toList(),
                  Spacer(),
                  TextField(
                    controller: textEditingController,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              String content = textEditingController.text;
                              textEditingController.clear();
                              postModel.comments!.add(content);
                              setState(() {});
                            },
                            icon: Icon(
                              Icons.send,
                              size: 35,
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
