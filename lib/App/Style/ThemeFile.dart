import 'package:flutter/material.dart';

// Light Mode Theme
final ThemeData lightTheme = ThemeData(
  primaryColor: Colors.pink,
  scaffoldBackgroundColor: Colors.white,
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    displayMedium: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
    displaySmall: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(fontSize: 16.0, color: Colors.black),
    bodyMedium: TextStyle(fontSize: 14.0, color: Colors.black),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.green),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.pink,
    titleTextStyle: TextStyle(
      fontSize: 24.0,
      color: Colors.white,
    ),
  ),
);

// Dark Mode Theme
final ThemeData darkTheme = ThemeData(
  primaryColor: Colors.orange,
  scaffoldBackgroundColor: Colors.black,
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
    displayMedium: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.white),
    displaySmall: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
    bodyLarge: TextStyle(fontSize: 16.0, color: Colors.white),
    bodyMedium: TextStyle(fontSize: 14.0, color: Colors.white),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.green),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.orange,
    titleTextStyle: TextStyle(
      fontSize: 16.0,
      color: Colors.white,
    ),
  ),
);

// Default theme mode (you can change this as needed)
const ThemeMode defaultThemeMode = ThemeMode.light;

// Function to toggle between light and dark mode
ThemeMode toggleThemeMode(ThemeMode currentMode) {
  return currentMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
}
