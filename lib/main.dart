import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //
              Image.asset("assets/images/quiz-logo.png", width: 300),
              SizedBox(height: 20),
              Text(
                "Learn flutter the funn way!",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {},
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
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_right_alt, size: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
