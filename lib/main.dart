import 'package:flutter/material.dart';
import 'package:flutter_neumorphism/constants.dart';
import 'package:flutter_neumorphism/ui/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
      theme: Theme.of(context).copyWith(
          iconTheme: const IconThemeData(color: appTextColor),
          primaryIconTheme: const IconThemeData(color: appTextColor),
          textTheme: GoogleFonts.poppinsTextTheme()
              .apply(bodyColor: appTextColor, displayColor: appTextColor),
          appBarTheme: const AppBarTheme(
              backgroundColor: appBackgroundColor, elevation: 0),
          scaffoldBackgroundColor: appBackgroundColor),
      home: const HomeScreen());
}
