import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("Contact"),
        ),
      ),
      body: const Center(
        child: Text(
          "Contact Page",
          style: TextStyle(
            fontSize: 22.0,
          ),
        ),
      ),
    );
  }
}
