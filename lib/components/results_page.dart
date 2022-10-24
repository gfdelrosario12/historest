import 'package:flutter/material.dart';
import 'all.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({super.key});

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  final String finalScore = score.toString();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        // app is wrap in willpopscope to stop the user from just exiting with the back button
        onWillPop: () async {
          // show the confirm dialog to ask if the user will leave or not upon back button tap
          bool willLeave = false;
          // show the confirm dialog
          await showDialog(
              context: context,
              builder: (_) => AlertDialog(
                    title: const Text('Get back to reviewing?'),
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
                              MaterialPageRoute(
                                  builder: (context) => const MainConnector()),
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
                            "No",
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
              body: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    // displays congratulatory message with the sum of score
                    "Congrats you got $score",
                    style: TextStyle(fontSize: fontSize),
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(colorTheme)),
                      onPressed: () {
                        // navigates back to the main connector page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainConnector()),
                        );
                      },
                      child: const Text(
                        "Get back to reviewing.",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ))),
        ));
  }
}
