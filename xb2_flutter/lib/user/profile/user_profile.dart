import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(
        Icons.account_circle_outlined,
        color: Colors.black12,
        size: 128,
      ),
    );
  }
}
