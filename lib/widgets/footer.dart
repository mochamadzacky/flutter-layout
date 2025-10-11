import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final String nama;
  final String nim;

  const Footer({super.key, required this.nama, required this.nim});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal.shade100,
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      child: Text(
        'Dibuat oleh $nama | NIM: $nim',
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
    );
  }
}
