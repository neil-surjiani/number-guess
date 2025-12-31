import 'package:flutter/material.dart';
import 'dart:math';
import 'package:number_guess/start_page.dart';
import 'package:number_guess/result_win.dart';
import 'package:number_guess/result_lose.dart';


class Points_l3 extends StatefulWidget {
  final int points;
  const Points_l3({super.key, required this.points});

  @override
  State<Points_l3> createState() => _NumPoints_l3State();
}

class _NumPoints_l3State extends State<Points_l3> {
  final TextEditingController controller = TextEditingController();

  Random random = Random(); // Create a Random object
  late int points;
  late int rndmno;

  @override
  void initState() {
    super.initState();
    rndmno = Random().nextInt(500) + 1;
    points = widget.points;
  }

  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      //backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh), // your icon
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
          '🎲 Guess the Number',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsGeometry.only(bottom: 20),
              child: Text(
                'Guess the number?\n'
                'Level 3 (1-1000)',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                  color: Colors.black87,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Your Points: $points',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w500,
                      color: points > 30 ? Colors.blue : Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ),

            TextField(
              controller: controller, // Controls text input
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: 'Please enter your number.',
                hintStyle: const TextStyle(
                  color: Color.fromRGBO(131, 131, 131, 1),
                  fontSize: 17,
                ),
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 3),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              keyboardType: const TextInputType.numberWithOptions(),
            ),

            Padding(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 6,
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 42,
                    vertical: 14,
                  ),
                ),
                onPressed: () {
                  final userip = int.tryParse(controller.text);

                  if (userip == null) return;

                  setState(() {
                    if (userip > rndmno) {
                      result = 'Too High ! Try a lower no.';
                    }
                    if (userip < rndmno) {
                      result = 'Too Less ! Try a higher no.';
                    }
                    if (userip != rndmno) {
                      points = points - 10;
                    }
                    if (userip == rndmno) {
                      points = points + 60;
                    }
                    points;
                  });

                  controller.clear();

                  if (userip == rndmno) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Win(correctNumber: rndmno),
                      ),
                    );
                  } else if (points == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Lose(correctNumber: rndmno),
                      ),
                    );
                  }
                },
                child: const Text(
                  'Check',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(18),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    result,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Colors.red,
                    ),
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
