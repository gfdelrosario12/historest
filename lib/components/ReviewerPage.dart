// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'Lists/priestNames.dart';
import 'Lists/dates.dart';
import '';

class ReviewerPage extends StatefulWidget {
  ReviewerPage({super.key});

  @override
  State<ReviewerPage> createState() => _ReviewerPageState();
}

class _ReviewerPageState extends State<ReviewerPage> {
  double gapSize = 3;

  double dotSize = 20;

  var colorTheme = 0xff343A8E;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Arial',
          cardTheme: CardTheme(color: Color(colorTheme)),
        ),
        home: Scaffold(
            body: SingleChildScrollView(
                child: Column(
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  "ASES - A History",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(),
            Container(
              child: Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "The Parish Priests of the Archdiocesan Shrine of Espiritu Santo",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
            Container(
                child: SizedBox(
              height: 80.0,
              child: TimelineNode(
                indicator: Card(
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Start',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                endConnector: SolidLineConnector(),
              ),
            )),
            for (int i = 0; i < dates.length; i++)
              Container(
                  child: TimelineTile(
                contents: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    priestNames[i],
                    textAlign: TextAlign.center,
                  ),
                ),
                oppositeContents: Card(
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      dates[i],
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                node: TimelineNode(
                  indicator: DotIndicator(),
                  startConnector: SolidLineConnector(),
                  endConnector: SolidLineConnector(),
                ),
              )),
            Container(
              child: SizedBox(
                height: 80.0,
                child: TimelineNode(
                  indicator: Card(
                    margin: EdgeInsets.zero,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'End',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  startConnector: SolidLineConnector(),
                ),
              ),
            )
          ],
        ))));
  }
}
