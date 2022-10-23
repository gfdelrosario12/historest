import 'package:flutter/material.dart';
import 'all.dart';

class QuizPage2 extends StatefulWidget {
  const QuizPage2({super.key});

  @override
  State<QuizPage2> createState() => _QuizPage2State();
}

class _QuizPage2State extends State<QuizPage2> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          bool willLeave = false;
          // show the confirm dialog
          await showDialog(
              context: context,
              builder: (_) => AlertDialog(
                    title: Text(leaveQuestion),
                    actions: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(colorTheme)),
                          onPressed: () {
                            willLeave = true;
                            score = 0;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainConnector()));
                          },
                          child: const Text('Yes')),
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Color(colorTheme)),
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text(
                            'No',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ));
          return willLeave;
        },
        child: MaterialApp(
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
                      Text(
                        "Which priest took over 2 times as parish priest",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: Colors.white, fontSize: fontSize),
                      ),
                      // ignore: unnecessary_new
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle: TextStyle(fontSize: fontSize),
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {
                                print(score);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => QuizPage3()));
                              },
                              child: Text(
                                priestNames[3],
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle: TextStyle(fontSize: fontSize),
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {
                                print(score);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => QuizPage3()));
                              },
                              child: Text(
                                priestNames[7],
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle: TextStyle(fontSize: fontSize),
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {
                                score += 1;
                                print(score);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => QuizPage3()));
                              },
                              child: Text(
                                priestNames[4],
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle: TextStyle(fontSize: fontSize),
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {
                                print(score);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => QuizPage3()));
                              },
                              child: Text(
                                priestNames[10],
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
            )));
  }
}
