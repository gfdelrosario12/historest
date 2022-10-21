import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Center(
            child: Text(
              "ASES • MAS",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: currentIndex == 0 ? ReviewerPage() : QuizPage(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Reviwer',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.question_answer),
              label: 'Quiz',
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}

class ReviewerPage extends StatelessWidget {
  ReviewerPage({super.key});
  double gapSize = 3;
  double dotSize = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Text(
        "ASES A History \n The Church Twice Sanctified",
        textAlign: TextAlign.center,
      ),
      TimelineTile(
        oppositeContents: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
              'The current grounds where the Archdiocesan Shrine of Espiritu Santo was onced a shelter for mortal remains of the faithful, a cemetery named cervantes.',
              textAlign: TextAlign.center),
        ),
        contents: Card(
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Text("Start"),
          ),
        ),
        node: TimelineNode(
          indicator: DotIndicator(size: dotSize),
          startConnector: DashedLineConnector(gap: gapSize),
          endConnector: DashedLineConnector(gap: gapSize),
        ),
      ),
      TimelineTile(
        contents: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
              'Santa Cruz or Cervantes cemetery was closed down due to health issues.'),
        ),
        oppositeContents: Card(
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: const Text('1913.'),
          ),
        ),
        node: TimelineNode(
          indicator: DotIndicator(size: dotSize),
          startConnector: DashedLineConnector(gap: gapSize),
          endConnector: DashedLineConnector(gap: gapSize),
        ),
      ),
      TimelineTile(
        oppositeContents: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Nothing was done until in 1924 when Associate Justice Florentino Torres of the Supreme Court headed a group of residents in a move to secure fort their district the recognition of an Ecclesiastical Community.',
            textAlign: TextAlign.center,
          ),
        ),
        contents: Card(
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: const Text('1924'),
          ),
        ),
        node: TimelineNode(
          indicator: DotIndicator(size: dotSize),
          startConnector: DashedLineConnector(gap: gapSize),
          endConnector: DashedLineConnector(gap: gapSize),
        ),
      )
    ])));
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("In the Quiz Page"),
    );
  }
}
