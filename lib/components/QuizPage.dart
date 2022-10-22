import 'dart:ui';
import 'Lists/priestNames.dart';

import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  var colorTheme = 0xff343A8E;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Color(colorTheme),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Who is the First Parish Priest of Espiritu Santo?",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // ignore: unnecessary_new
                    new ButtonBar(
                      alignment: MainAxisAlignment.center,
                      children: [
                        Column(children: [
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 20),
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {
                              score += 1;
                              print(score);
                            },
                            child: Text(
                              priestNames[0],
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 20),
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: Text(
                              priestNames[1],
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ]),
                        Column(children: [
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 20),
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: Text(
                              priestNames[2],
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 20),
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: Text(
                              priestNames[3],
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ]),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
