import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(contax) { 
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [ 
          //
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(140, 255, 255, 255),
          ),
          SizedBox(height: 50),
          Text(
            "Learn flutter the funn way!",
            style: GoogleFonts.lato(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          OutlinedButton(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              // padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              foregroundColor: Colors.white,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "start quiz",
                  style: TextStyle(
                    fontSize: 22,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.arrow_right_alt, size: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
