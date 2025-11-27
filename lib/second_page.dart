import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String data;

  SecondPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: Text("Second Page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          "القيمة الممررة  : $data",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}