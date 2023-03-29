import 'package:flutter/material.dart';
import 'package:sahibindenui/design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
   
        // is not restarted.
        primarySwatch: Colors.blue ,
      ),
      home: const cloneApp(),
    );
  }
}

