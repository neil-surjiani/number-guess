import 'package:flutter/material.dart';
import 'package:number_guess/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NumGuess(),
      debugShowCheckedModeBanner: false,
    );
  }
}

