import 'package:electrolux/screens/homeScreen.dart';
import 'package:electrolux/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //app contains both themes, dark and light which can be changed thourhg phones theme settings
        theme: lightMode,
        darkTheme: darkMode,
        home: const HomeScreen());
  }
}
