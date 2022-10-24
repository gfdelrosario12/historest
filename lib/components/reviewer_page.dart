import 'package:flutter/material.dart';
// the app uses a custom component from pub dev named timelines 0.1.0
import 'package:timelines/timelines.dart';
import 'all.dart';

class ReviewerPage extends StatefulWidget {
  const ReviewerPage({super.key});

  @override
  State<ReviewerPage> createState() => _ReviewerPageState();
}

class _ReviewerPageState extends State<ReviewerPage> {
  double gapSize = 3;

  double dotSize = 20;

  bool willLeave = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // arial is the global font of the app
          fontFamily: 'Arial',
          // background color of all the cards in this page
          cardTheme: CardTheme(color: Color(colorTheme)),
        ),
        home: Scaffold(
            body: SingleChildScrollView(
                // puts the components in a scrollable view so that the page will be scrollable
                child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "ASES - A History",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                "The Parish Priests of the Archdiocesan Shrine of Espiritu Santo",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: fontSize),
              ),
            ),
            // the start connector of timeline
            SizedBox(
              height: 80.0,
              child: TimelineNode(
                indicator: Card(
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Start',
                      style: TextStyle(color: Colors.white, fontSize: fontSize),
                    ),
                  ),
                ),
                endConnector: SolidLineConnector(color: Color(colorTheme)),
              ),
            ),
            // the body of the timelines is looped so that it will automatically display contents inside priest names list and dates list
            for (int i = 0; i < dates.length; i++)
              TimelineTile(
                contents: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    priestNames[i],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: fontSize),
                  ),
                ),
                oppositeContents: Card(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      dates[i],
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: fontSize),
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
            // end connector of timeline
            SizedBox(
              height: 80.0,
              child: TimelineNode(
                indicator: Card(
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'End',
                      style: TextStyle(color: Colors.white, fontSize: fontSize),
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
