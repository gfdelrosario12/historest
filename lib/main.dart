import 'package:flutter/material.dart';
import 'components/ReviewerPage.dart';
import 'components/QuizPage.dart';

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
  var colorTheme = 0xff343A8E;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            flexibleSpace: const Padding(
              padding: EdgeInsets.only(top: 35.0),
              child: Image(image: AssetImage('assets/images/Header.png')),
            )),
        body: currentIndex == 0 ? ReviewerPage() : QuizPage(),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(colorTheme),
          unselectedItemColor: Color(colorTheme),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
              ),
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
