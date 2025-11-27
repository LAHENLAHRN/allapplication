import 'package:flutter/material.dart';
void main() {
  runApp(HomePage());
}
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextField(
              controller: text1,
              decoration: InputDecoration(
                labelText: "أدخل النص",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            TextField(
              controller: text2,
              readOnly: true,
              decoration: InputDecoration(
                labelText: "هنا يظهر النص",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  text2.text = text1.text;
                });
              },
              child: Text("طباعة النص"),
            ),
          ],
        ),
      ),
    );
  }
}
