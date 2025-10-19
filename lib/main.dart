import 'package:flutter/material.dart';

void main() {
  runApp(const RajakDhobiSamajApp());
}

class RajakDhobiSamajApp extends StatelessWidget {
  const RajakDhobiSamajApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rajak Dhobi Samaj',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rajak Dhobi Samaj Yuva Ekta Manch'),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text(
            'स्वागत है!',
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}