import 'package:flutter/material.dart';
import 'all.dart';

class QuizPage5 extends StatefulWidget {
  const QuizPage5({super.key});

  @override
  State<QuizPage5> createState() => _QuizPage5State();
}

class _QuizPage5State extends State<QuizPage5> {
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
                        "The newly deisgnated parish priest of the parish that will be coming this november 2022.",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
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
                                        builder: (context) => ResultsPage()));
                              },
                              child: Text(
                                priestNames[11],
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
                                        builder: (context) => ResultsPage()));
                              },
                              child: Text(
                                priestNames[12],
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
                                        builder: (context) => ResultsPage()));
                              },
                              child: Text(
                                priestNames[13],
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
                                        builder: (context) => ResultsPage()));
                              },
                              child: Text(
                                priestNames[15],
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
