import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("404 Page Not Found"),
        ),
      ),
      body: const Center(
        child: Text(
          "ErrorPage!",
          style: TextStyle(
            fontSize: 22.0,
          ),
        ),
      ),
    );
  }
}
