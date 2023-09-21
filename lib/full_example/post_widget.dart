import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/full_example/post_model.dart';

class PostWidget extends StatefulWidget {
  PostModel postModel;
  Function? function;

  PostWidget(this.postModel, [this.function]);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  toggleIsLike() {
    setState(() {});
    widget.postModel.isLiked = !(widget.postModel.isLiked);
    if (widget.function != null) {
      widget.function!();
    }
  }

  String content = '';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onDoubleTap: () {
              toggleIsLike();
            },
            child: Image.network(
              widget.postModel.image ?? '',
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (x, y, z) {
                return Container(
                    color: Colors.grey,
                    height: 180,
                    width: double.infinity,
                    child: Icon(Icons.image));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    toggleIsLike();
                  },
                  child: Icon(
                    Icons.favorite,
                    color: (widget.postModel.isLiked ?? false)
                        ? Colors.red
                        : Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(widget.postModel.content ?? ''),
                TextField(
                  onChanged: (x) {
                    content = x;
                  },
                  decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: () {
                          log(content);
                        },
                        child: Icon(
                          Icons.send,
                          size: 35,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 10),
                          borderRadius: BorderRadius.circular(15))),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
