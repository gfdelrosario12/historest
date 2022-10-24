import 'package:flutter/material.dart';
import 'all.dart';

class MainConnector extends StatefulWidget {
  const MainConnector({super.key});

  @override
  State<MainConnector> createState() => _MainConnectorState();
}

class _MainConnectorState extends State<MainConnector> {
  @override
  void initState() {
    score = 0;
    super.initState();
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Arial'),
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            flexibleSpace: const Padding(
              padding: EdgeInsets.only(top: 35.0),
              child: Image(image: AssetImage('assets/images/Header.png')),
            )),
        body: currentIndex == 0 ? ReviewerPage() : QuizMainPage(),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color(colorTheme),
          unselectedItemColor: Color(colorTheme),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
              ),
              label: 'Reviewer',
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
    ;
  }
}
