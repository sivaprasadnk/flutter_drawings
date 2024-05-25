import 'package:flutter/material.dart';
// import 'package:flutter_drawings/avengers_logo.dart';
import 'package:flutter_drawings/captain_america_shield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Captain America's shield",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CaptainAmerica(),
      ),
    );
  }
}
