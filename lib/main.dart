import 'package:flutter/material.dart';
import 'package:hubtel_coding/screens/bottom_navigator/bottom_navigation.dart';
import 'package:hubtel_coding/utils/color_palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Palette.primaryColor),
        useMaterial3: true,
      ),
      home: const CustomBottomNavigator(),
    );
  }
}
