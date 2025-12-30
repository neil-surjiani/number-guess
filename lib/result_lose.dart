import 'package:flutter/material.dart';
import 'package:number_guess/mode.dart';

class Lose extends StatefulWidget {
  const Lose({super.key});

  @override
  State<Lose> createState() => _LoseState();
}

class _LoseState extends State<Lose> {
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Mode()),
              );
            },
          ),
        ],
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Result',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
            child: Padding(
              padding: EdgeInsets.all(18),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'You Lost !',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.red
                    ),
                  ),
                ),
              ),
            ),
            ),

           Center(
           child: Padding(padding: EdgeInsets.only(top: 16),
           child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 14,
                ),
              ),
              onPressed: () async {
                Navigator.push(context,MaterialPageRoute(builder: (context) => const Mode()));
              },
              child: const Text(
                'Play again',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
           ),
      ),
          ],
        ),
      ),
    );
  }
}
