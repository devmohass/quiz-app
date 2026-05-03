import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_page.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(() {
        // selectedAnswer = [];
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = 'questions_screen';
    });
  }

  @override
  Widget build(contax) {
    // one-Option
    // final screenWidget = activeScreen == "start-screen"
    //     ? StartScreen(switchScreen)
    //     : QuestionsScreen(onSelectAnswer: chooseAnswer);
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == "questions-screen") {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswer,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 76, 42, 133),
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

