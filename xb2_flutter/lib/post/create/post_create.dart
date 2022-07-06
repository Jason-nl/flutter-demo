import 'package:flutter/material.dart';

class PostCreate extends StatelessWidget {
  const PostCreate({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(
        Icons.add_a_photo_outlined,
        color: Colors.black12,
        size: 128,
      ),
    );
  }
}
