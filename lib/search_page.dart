import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      "title": "هاتف سامسونج",
      "subtitle": "أحدث الإصدارات",
      "icon": Icons.phone_android,
    },
    {
      "title": "حاسوب محمول",
      "subtitle": "مناسب للعمل والدراسة",
      "icon": Icons.laptop,
    },
    {
      "title": "سماعات بلوتوث",
      "subtitle": "صوت عالي الجودة",
      "icon": Icons.headphones,
    },
    {
      "title": "كاميرا احترافية",
      "subtitle": "تصوير بدقة 4K",
      "icon": Icons.camera_alt,
    },
    {
      "title": "طابعة",
      "subtitle": "طابعة ليزر سريعة",
      "icon": Icons.print,
    },
    {
      "title": "ماوس لاسلكي",
      "subtitle": "بطارية تدوم طويلاً",
      "icon": Icons.mouse,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(
                items[index]["icon"],
                size: 32,
                color: Colors.green,
              ),
              title: Text(
                items[index]["title"],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(items[index]["subtitle"]),
              trailing: Icon(Icons.arrow_forward_ios, size: 18),
            ),
          );
        },
      ),
    );
  }
}
