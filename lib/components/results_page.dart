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
        onWillPop: () async {
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
                            willLeave = true;
                            score = 0;
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
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
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
                    "Congrats you got $score",
                    style: TextStyle(fontSize: fontSize),
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(colorTheme)),
                      onPressed: () {
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
