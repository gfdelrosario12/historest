import 'package:flutter/material.dart';
import 'all.dart';

class QuizMainPage extends StatefulWidget {
  const QuizMainPage({super.key});

  @override
  State<QuizMainPage> createState() => _QuizMainPageState();
}

class _QuizMainPageState extends State<QuizMainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Arial'),
        home: Scaffold(
            body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Ministry of Altar Servers - Archdiocesan Shrine of Espiritu Santo\n History Quiz - Parish Priests Edition",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: fontSize),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(colorTheme)),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const QuizPage1()));
                },
                child: Text(
                  'Are you ready to take the Quiz?',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: fontSize),
                ),
              ),
            ],
          ),
        )));
  }
}
