import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool agree = false; // هل وافق على الشروط؟

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('شروط الاستخدام')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "الرجاء قراءة الشروط والموافقة عليها:",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),

            // مربع الاختيار
            CheckboxListTile(
              title: const Text("أوافق على الشروط والأحكام"),
              value: agree,
              onChanged: (val) {
                setState(() {
                  agree = val!;
                });
              },
            ),

            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    Navigator.pop(context, true); // موافق
                  },
                  child: const Text('موافق'),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    Navigator.pop(context, false); // غير موافق
                  },
                  child: const Text('غير موافق'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
