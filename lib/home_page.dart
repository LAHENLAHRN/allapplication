import 'package:flutter/material.dart';
import 'second_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController text1Controller = TextEditingController();
  TextEditingController text2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        title: Text("TextField Assignment"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: text1Controller,
              decoration: InputDecoration(
                labelText: "الحقل الأول",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: text2Controller,
              decoration: InputDecoration(
                labelText: "الحقل الثاني",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  text2Controller.text = text1Controller.text;
                });
              },
              child: Text("طباعة النص من الحقل الأول إلى الثاني"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SecondPage(data: text1Controller.text),
                  ),
                );
              },
              child: Text("انتقال لصفحة أخرى + تمرير قيمة"),
            ),
          ],
        ),
      ),
    );
  }
}

