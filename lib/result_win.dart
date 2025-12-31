import 'package:flutter/material.dart';
import 'package:number_guess/mode.dart';

class Win extends StatefulWidget {
  final int correctNumber;
  const Win({
    super.key,
    required this.correctNumber,
  });

  @override
  State<Win> createState() => _WinState();
}

class _WinState extends State<Win> {

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
        padding: const EdgeInsets.only(top: 10),
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
                    'You Won !\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.green
                    ),
                  ),
                ),
              ),
            ),
            ),

            Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Center(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'The no. was ${widget.correctNumber}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Colors.blue,
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
