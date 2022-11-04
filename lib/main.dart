import 'package:car_customizer_app/Screens/HomeScreens/HomeScreen.dart';
import 'package:car_customizer_app/Screens/OnBoardingScreens/OnBoardingScreen.dart';
import 'package:car_customizer_app/Screens/SummaryScreens/SummaryScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnBoardingScreen(),
      routes: {
        "/home": (context) => HomeScreen(),
        "/summary": (context) => SummaryScreen()
      },
    );
  }
}
