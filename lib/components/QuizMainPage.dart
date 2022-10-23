import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'all.dart';

class QuizMainPage extends StatefulWidget {
  const QuizMainPage({super.key});

  @override
  State<QuizMainPage> createState() => _QuizMainPageState();
}

class _QuizMainPageState extends State<QuizMainPage> {
  int score = 0;
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
              const Text(
                "Ministry of Altar Servers - Archdiocesan Shrine of Espiritu Santo\n History Quiz - Parish Priests Edition",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(colorTheme)),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuizPage1()));
                },
                child: const Text(
                  'Are you ready to take the Quiz?',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        )));
  }
}
