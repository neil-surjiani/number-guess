import 'dart:math';

import 'package:flutter/material.dart';
import 'package:number_guess/points_l1.dart';
import 'package:number_guess/start_page.dart';
import 'package:number_guess/mode.dart';

class Prules extends StatelessWidget {
  const Prules({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NumGuess()),
              );
            },
          ),
        ],
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          '🤔 How to Play – Points Mode',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              'Follow these Rules to score maximum points 👇\n',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
            ),

            SizedBox(height: 20),

            Text(
              '🎯 The game selects a random number based on the level:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),

            Text(
              '• Level 1 → 1 to 100\n'
              '• Level 2 → 1 to 500\n'
              '• Level 3 → 1 to 1000',
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(height: 16),

            Text(
              '⌨️ Enter your guess in the input box.',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 12),

            Text(
              '📊 After each guess, you will get a hint:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 6),

            Text(
              '• "Too High" → Guess lower\n'
              '• "Too Low" → Guess higher',
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(height: 16),

            Text(
              '💯 Points System:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),

            Text(
              '• ❌ Wrong guess → −10 points\n'
              '• ✅ Correct guess → +50 points',
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(height: 16),

            Text(
              '⚠️ The game ends if your points reach 0.',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 12),

            Text(
              '🏆 Guess correctly to win and advance!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),

            SizedBox(height: 30),

            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 14,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Points()),
                  );
                },
                child: const Text(
                  'Continue',
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
