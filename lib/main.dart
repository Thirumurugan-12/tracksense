import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tracksense/screens/homepage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ), // Set global font here
        // This is the theme of your application.
      ),     
      darkTheme: ThemeData(
    // This is the theme of your application when dark mode is enabled.
    // Add your dark theme colors here
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
  ),  // Use either the light or dark theme based on what the user has selected in the system settings
      home: HomePage(),
    );
  }
}