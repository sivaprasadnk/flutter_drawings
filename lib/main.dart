import 'package:flutter/material.dart';
import 'package:flutter_drawings/avengers_logo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avengers',
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
    var mediaQuerySize = MediaQuery.of(context).size;
    var w = mediaQuerySize.width;
    var h = mediaQuerySize.height;
    debugPrint(
        " width : $w, height :$h"); // width : 707.2000122070312, height :711.2000122070312
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AvengersLogo(),
      ),
    );
  }
}
