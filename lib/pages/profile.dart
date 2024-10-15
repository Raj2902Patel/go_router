import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String username;
  final String userId;
  const Profile({super.key, required this.username, required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("Profile"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              username,
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              userId,
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
