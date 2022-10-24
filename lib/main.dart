import 'package:flutter/material.dart';
import 'components/main_connector.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // runs the MainConnector Class which contains the main page of the app
    return const MainConnector();
  }
}
