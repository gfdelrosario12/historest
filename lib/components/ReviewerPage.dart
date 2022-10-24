// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';
import 'all.dart';

class ReviewerPage extends StatelessWidget {
  ReviewerPage({super.key});

  double gapSize = 3;

  double dotSize = 20;

  bool willLeave = false;

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
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                "ASES - A History",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(),
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text(
                "The Parish Priests of the Archdiocesan Shrine of Espiritu Santo",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            SizedBox(
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
                endConnector: SolidLineConnector(color: Color(colorTheme)),
              ),
            ),
            for (int i = 0; i < dates.length; i++)
              TimelineTile(
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
                  indicator: DotIndicator(
                    color: Color(colorTheme),
                  ),
                  startConnector: SolidLineConnector(color: Color(colorTheme)),
                  endConnector: SolidLineConnector(color: Color(colorTheme)),
                ),
              ),
            SizedBox(
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
                startConnector: SolidLineConnector(color: Color(colorTheme)),
              ),
            )
          ],
        ))));
  }
}
