import 'package:flutter/material.dart';
import 'package:number_guess/guess.dart';
import 'package:number_guess/rules.dart';

class NumGuess extends StatefulWidget {
  const NumGuess({super.key});

  @override
  State<NumGuess> createState() => _NumGuessState();
}

class _NumGuessState extends State<NumGuess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Background color of the entire screen
      //backgroundColor: Colors.white,

      // Top AppBar
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh), // your icon
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => const NumGuess()));
            },
          ),],
        title: const Text(
          '🎯 Number Guess Game',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        iconTheme: const IconThemeData(
        color: Colors.white, 
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Number Guess Game', 
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            
            Padding(padding: EdgeInsets.all(18),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 6,
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  horizontal: 22,
                  vertical: 14,
                ),
              ),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => const Guess()));
              },
              child: const Text(
                'Play Game 🎮',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            ),

            Padding(padding: EdgeInsets.only(left: 18,right: 18,bottom: 18),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 6,
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 14,
                ),
              ),
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => const Rules()));
              },
              child: const Text(
                'How to Play 🤔',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
