import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Layout: Mochamad Zacky Yudha A 2341760147',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Demo'),
        ),
        body: ListView(
          children: [
            // ===== Image Section =====
            Image.asset(
              'images/rakum.jpeg',
              width: double.infinity,
              height: 240,
              fit: BoxFit.cover,
            ),
            // ===== Title Section =====
            titleSection,
            // ===== Button Section =====
            buttonSection,
            // ===== Text Section =====
            textSection,
          ],
        ),
      ),
    );
  }
}

// ===== Title Section =====
final Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Wisata TNBTS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const Text(
              'Malang, Indonesia',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      const Icon(
        Icons.star,
        color: Colors.red,
      ),
      const SizedBox(width: 4),
      const Text(
        '41',
        style: TextStyle(fontSize: 16),
      ),
    ],
  ),
);

// ===== Button Section =====
final Color color = Colors.blue;

final Widget buttonSection = Container(
  padding: const EdgeInsets.symmetric(horizontal: 32),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(color, Icons.call, 'CALL'),
      _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
      _buildButtonColumn(color, Icons.share, 'SHARE'),
    ],
  ),
);

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      const SizedBox(height: 8),
      Text(
        label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: color,
        ),
      ),
    ],
  );
}

// ===== Text Section =====
const Widget textSection = Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Danau Ranu Kumbolo terletak di Gunung Semeru. '
    'Dikelilingi oleh padang rumput dan hutan pinus yang indah. '
    'Tempat ini sangat cocok untuk hiking, camping, dan menikmati pemandangan alam yang menakjubkan.',
    softWrap: true,
    style: TextStyle(fontSize: 16, height: 1.5),
  ),
);
