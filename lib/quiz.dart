import 'package:flutter/material.dart';
import 'package:quiz_app/questions_page.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = "start-screen";

  @override
  void initState() {
    activeScreen = "start-screen";
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  @override
  Widget build(contax) {
    // one-Option
    final screenWidget = activeScreen == "start-screen"
        ? StartScreen(switchScreen)
        : QuestionsScreen();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: screenWidget,
        // >>onother option
        // activeScreen == "start-screen"
        //     ? StartScreen(switchScreen)
        //     : QuestionsScreen(),
      ),
    );
  }
} 







// MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(backgroundColor: Colors.deepPurple, body: StartScreen()),
//     ),

