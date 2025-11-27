import 'package:flutter/material.dart';

void main() {
  runApp(const MyCVApp());
}

class MyCVApp extends StatelessWidget {
  const MyCVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CV App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const CVScreen(),
    );
  }
}

class CVScreen extends StatelessWidget {
  const CVScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          'My CV',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(

            width: double.infinity,

            constraints: BoxConstraints(minHeight: media.height - kToolbarHeight),
            padding: const EdgeInsets.all(20),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                const CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.indigo,
                  child: Icon(Icons.person, size: 70, color: Colors.white),
                ),
                const SizedBox(height: 12),
                const Text(
                  "Yosif Mohammed",
                  style: TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
                ),
                const Text(
                  "Mobile App Developer",
                  style: TextStyle(
                      fontSize: 16, color: Colors.grey, fontStyle: FontStyle.italic),
                ),
                const SizedBox(height: 12),
                const Divider(height: 30, color: Colors.indigo, thickness: 1),
                // Info rows (use Expanded to avoid overflow)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: const [
                      Icon(Icons.email, color: Colors.indigo),
                      SizedBox(width: 8),
                      Text(
                        "Email: ",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
                      ),
                      Expanded(
                        child: Text(
                          "lahenlahrn@gmail.com",
                          style: TextStyle(color: Colors.black54),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: const [
                      Icon(Icons.phone, color: Colors.indigo),
                      SizedBox(width: 8),
                      Text(
                        "Phone: ",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
                      ),
                      Expanded(
                        child: Text(
                          "772622455",
                          style: TextStyle(color: Colors.black54),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Skills Section
                sectionTitle("Skills"),
                const SizedBox(height: 8),
                sectionItems([
                  "Proficient in some programming languages",
                  "Photoshop design",
                  "Video editing using CapCut",
                ]),

                const SizedBox(height: 20),
                // Education Section
                sectionTitle("Education"),
                const SizedBox(height: 8),
                sectionItems([
                  "Bachelor's degree in Computer Science",
                  "Diploma in Photoshop Design",
                ]),

                const SizedBox(height: 20),
                // Experience Section
                sectionTitle("Experience"),
                const SizedBox(height: 8),
                sectionItems([
                  "Intern at Radna Institute to gain experience in Photoshop and video editing",
                  "Freelance Projects (UI Design, API Integration)",
                ]),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // عنوان القسم (غير const بسبب استخدام shade)
  static Widget sectionTitle(String title) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.indigo.shade50,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.indigo.shade700,
          ),
        ),
      ),
    );
  }

  // عناصر القسم
  static Widget sectionItems(List<String> items) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: items
            .map(
              (e) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              "• $e",
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ),
        )
            .toList(),
      ),
    );
  }
}
