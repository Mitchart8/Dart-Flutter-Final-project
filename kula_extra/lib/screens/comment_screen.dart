import 'package:flutter/material.dart';

class Comment extends StatefulWidget {
  const Comment({super.key});

  @override
  State<Comment> createState() => _CommentState();

}

class _CommentState extends State<Comment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: const Column(children: [
        Center(child: Text("Contact Us"),)
      ],)),
    );
  }
}