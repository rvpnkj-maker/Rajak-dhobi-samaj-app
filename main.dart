import 'package:flutter/material.dart';

void main() => runApp(RajakDhobiApp());

class RajakDhobiApp extends StatefulWidget {
  @override
  _RajakDhobiAppState createState() => _RajakDhobiAppState();
}

class _RajakDhobiAppState extends State<RajakDhobiApp> {
  bool isHindi = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rajak Dhobi Samaj Yuva Ekta Manch',
      home: Scaffold(
        appBar: AppBar(
          title: Text(isHindi ? 'रजक धोबी समाज युवा एकता मंच' : 'Rajak Dhobi Samaj Yuva Ekta Manch'),
        ),
        body: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Image.asset('assets/logo.png', width: 140, height: 140, errorBuilder: (c, e, s) {
                return Container(
                  width: 140,
                  height: 140,
                  color: Colors.grey[200],
                  child: Center(child: Text('Logo\nplaceholder', textAlign: TextAlign.center)),
                );
              }),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:16.0),
              child: Text(
                isHindi ? 'स्वागत है — समाचार, पंजीकरण और इवेंट यहाँ देखें।' : 'Welcome — view news, registration and events here.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text(isHindi ? 'पंजीकरण' : 'Register'),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              color: Colors.blueGrey[50],
              padding: EdgeInsets.symmetric(vertical:8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Powered by Mahaveer Pankaj, Itawa Kota Rajasthan',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(height:4),
                  TextButton(
                    onPressed: () {
                      setState(() => isHindi = !isHindi);
                    },
                    child: Text(isHindi ? 'Switch to English' : 'हिन्दी में दिखाएँ'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}