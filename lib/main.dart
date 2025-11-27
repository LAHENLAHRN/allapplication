import 'package:flutter/material.dart';

void main() {
  runApp(const TasbeehApp());
}

class TasbeehApp extends StatelessWidget {
  const TasbeehApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'عداد التسبيح',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.teal,
      ),
      home: const TasbeehScreen(),
    );
  }
}

class TasbeehScreen extends StatefulWidget {
  const TasbeehScreen({super.key});

  @override
  State<TasbeehScreen> createState() => _TasbeehScreenState();
}

class _TasbeehScreenState extends State<TasbeehScreen> {
  int allahuAkbar = 0;
  int alhamdulillah = 0;
  int subhanAllah = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF74EBD5), Color(0xFFACB6E5)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 16),
                const Text(
                  'عداد الأذكار',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black45,
                        offset: Offset(1, 1),
                        blurRadius: 3,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                _buildCounterCard(
                  title: 'الله أكبر',
                  count: allahuAkbar,
                  color: Colors.orangeAccent,
                  onTap: () => setState(() => allahuAkbar++),
                  onReset: () => setState(() => allahuAkbar = 0),
                ),
                const SizedBox(height: 16),
                _buildCounterCard(
                  title: 'الحمد لله',
                  count: alhamdulillah,
                  color: Colors.lightBlueAccent,
                  onTap: () => setState(() => alhamdulillah++),
                  onReset: () => setState(() => alhamdulillah = 0),
                ),
                const SizedBox(height: 16),
                _buildCounterCard(
                  title: 'سبحان الله',
                  count: subhanAllah,
                  color: Colors.purpleAccent,
                  onTap: () => setState(() => subhanAllah++),
                  onReset: () => setState(() => subhanAllah = 0),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCounterCard({
    required String title,
    required int count,
    required Color color,
    required VoidCallback onTap,
    required VoidCallback onReset,
  }) {
    return Card(
      color: Colors.white.withOpacity(0.85),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: color.withOpacity(0.9),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '$count',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w600,
                color: color,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: onTap,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: color,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 4,
                  ),
                  child: const Text(
                    'تسبيح',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                OutlinedButton(
                  onPressed: onReset,
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: color, width: 2),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  child: Text(
                    'تصفير',
                    style: TextStyle(fontSize: 18, color: color),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
