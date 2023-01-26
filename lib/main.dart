import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        primaryColor: const Color(0xFFD0EDF2),
        backgroundColor: Colors.amber,
        scaffoldBackgroundColor: const Color(0xFFD0EDF2)
      ),
    );
  }
}

