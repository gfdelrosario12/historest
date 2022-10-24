import 'package:flutter/material.dart';
import 'all.dart';

class QuizPage1 extends StatefulWidget {
  const QuizPage1({super.key});

  @override
  State<QuizPage1> createState() => _QuizPage1State();
}

// quiz page 1
class _QuizPage1State extends State<QuizPage1> {
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
                            Navigator.push(
                              // navigates to the main connector page
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
        // contains the question and button for choices on each button
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
                      Text(
                        "Who is the first Parish Priest of Espiritu Santo Parish",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: Colors.white, fontSize: fontSize),
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
                                // navigates to the quiz page 2
                                //since the first choice is the correct answer, adds 1 to the score
                                score += 1;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const QuizPage2()));
                              },
                              child: Text(
                                priestNames[0],
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
                                // navigates to the quiz page 2
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const QuizPage2()));
                              },
                              child: Text(
                                priestNames[1],
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
                                // navigates to the quiz page 2
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const QuizPage2()));
                              },
                              child: Text(
                                priestNames[3],
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
                                // navigates to the quiz page 2
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const QuizPage2()));
                              },
                              child: Text(
                                priestNames[4],
                                textAlign: TextAlign.center,
                                style: const TextStyle(color: Colors.black),
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
