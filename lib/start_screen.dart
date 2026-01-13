import 'package:flutter/material.dart';

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
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 30),
          OutlinedButton(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              // padding: EdgeInsets.only(
              //   top: 10,
              //   bottom: 12,
              //   left: 20,
              //   right: 20,
              // ),
              backgroundColor: Colors.green,
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
