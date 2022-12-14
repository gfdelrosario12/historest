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
        // app is wrapped in willpopscope to stop the user from just exiting with the back button
        onWillPop: () async {
          // show the confirm dialog to ask if the user will leave or not upon back button tap
          await showDialog(
              context: context,
              builder: (_) => AlertDialog(
                    title: Text(leaveQuestion),
                    actions: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(colorTheme)),
                          onPressed: () {
                            // allows the user to leave
                            willLeave = true;
                            // resets the score upon exit
                            score = 0;
                            // navigates to the main connector page
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      const MainConnector()),
                            );
                          },
                          child: Text(
                            'Yes',
                            style: TextStyle(
                                color: Colors.white, fontSize: fontSize),
                          )),
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Color(colorTheme)),
                          // stays on the page upon button press
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text(
                            'No',
                            style: TextStyle(
                                color: Colors.white, fontSize: fontSize),
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
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Color(colorTheme),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "The newly deisgnated parish priest of the parish that will be coming this november 2022.",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle: TextStyle(fontSize: fontSize),
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {
                                // navigates to the results page since quiz is done
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ResultsPage()));
                              },
                              child: Text(
                                priestNames[11],
                                textAlign: TextAlign.center,
                                style: const TextStyle(color: Colors.black),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle: TextStyle(fontSize: fontSize),
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {
                                // navigates to the results page since quiz is done
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ResultsPage()));
                              },
                              child: Text(
                                priestNames[12],
                                textAlign: TextAlign.center,
                                style: const TextStyle(color: Colors.black),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle: TextStyle(fontSize: fontSize),
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {
                                // navigates to the results page since quiz is done
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ResultsPage()));
                              },
                              child: Text(
                                priestNames[13],
                                textAlign: TextAlign.center,
                                style: const TextStyle(color: Colors.black),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                textStyle: TextStyle(fontSize: fontSize),
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {
                                // navigates to the results page since quiz is done
                                // since the fourth choice is the correct answer, adds 1 to the score
                                score += 1;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ResultsPage()));
                              },
                              child: Text(
                                priestNames[15],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black, fontSize: fontSize),
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
