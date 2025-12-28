import 'package:flutter/material.dart';
import 'package:number_guess/start_page.dart';

class Rules extends StatelessWidget {
  const Rules({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh), // your icon
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => const NumGuess()));
            },
          ),],
        iconTheme: const IconThemeData(
        color: Colors.white, 
        ),
        title: const Text(
          '🤔 How to play ? ',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        centerTitle: true,
      ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [

      // Intro line
      Text(
        'Follow these simple steps to play 👇\n',
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.w600,
        ),
      ),

      SizedBox(height: 20),

      // Rules
      Text(
        '🎲 The game picks a random number between 1 and 100.',
        style: TextStyle(fontSize: 20),
      ),
      SizedBox(height: 12),

      Text(
        '⌨️ Enter your guess in the input field.',
        style: TextStyle(fontSize: 20,),
      ),
      SizedBox(height: 12),

      Text(
        '📊 The app will tell you if your guess is too high or too low.',
        style: TextStyle(fontSize: 20,),
      ),
      SizedBox(height: 12),

      Text(
        '🔁 Keep guessing until you find the correct number.',
        style: TextStyle(fontSize: 20,),
      ),
      SizedBox(height: 12),

      Text(
        '🔢 Your total number of attempts will be counted.\n',
        style: TextStyle(fontSize: 20,),
      ),
      SizedBox(height: 12),

      Text(
        '🎉 Guess correctly to win and play again!',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
      ),

      SizedBox(height: 30),

      // Endi

    ],
    )
     )
    );
  }
}
