import 'package:flutter/material.dart';
import 'package:number_guess/blind_guess.dart';
import 'package:number_guess/start_page.dart';
import 'package:number_guess/attempts_guess.dart';
import 'package:number_guess/timer_guess.dart';

class Mode extends StatefulWidget {
  const Mode({super.key});

  @override
  State<Mode> createState() => _ModeState();
}

class _ModeState extends State<Mode> {

  List<String> modes = ['Timer', 'Attempts' , 'Blind (Without hints)'];

  String startmode = 'Timer';

  Widget modeDropdown({
    required String value,
    required ValueChanged<String?> onChanged,
  }) {
    return DropdownButtonFormField<String>(
      value: value, // Currently selected currency

      // Dropdown list items
      items: modes.map((currency) {
        return DropdownMenuItem(
          value: currency,
          child: Text(
            currency,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
      }).toList(),

      // Triggered when user selects a new currency
      onChanged: onChanged,

      // Dropdown field decoration
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

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
          'Mode selection',
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
              padding: EdgeInsetsGeometry.only(bottom: 27),
              child: Text(
                'Please select your mode',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                  color: Colors.black87,
                ),
              ),
            ),

            Padding(padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                  child: modeDropdown(
                    value: startmode,
                    onChanged: (value) {
                      setState(() {
                        startmode = value!;
                      });
                    },
                  ),
                ),
              ],
        ),
            ),

           Padding(padding: EdgeInsets.only(top: 27),
           child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 14,
                ),
              ),
              onPressed: () async {
                if(startmode == 'Attempts')
                {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const Attempts_Guess()));
                  }
                if(startmode == 'Timer')
                {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const Timer_Guess()));
                  }
                if(startmode == 'Blind (Without hints)')
                {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const Blind_Guess()));
                  }
              },
              child: const Text(
                'Continue',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
           ),
          ],
      ),

    )
    );
  }
}
