import 'package:flutter/material.dart';

class About extends StatefulWidget {
  final Map<String, dynamic>? data;

  const About({super.key, this.data});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text("About Us"),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Name is: ${widget.data!['name']}",
              style: const TextStyle(
                fontSize: 22.0,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Name is: ${widget.data!['number']}",
              style: const TextStyle(
                fontSize: 22.0,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "City is: ${widget.data!['city']}",
              style: const TextStyle(
                fontSize: 22.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
