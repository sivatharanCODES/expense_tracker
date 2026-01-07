import 'package:flutter/material.dart';
import 'package:expense_tracker/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);
void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryFixed,
          foregroundColor: kColorScheme.primaryContainer,
        ),

        // elevatedButtonTheme: const ElevatedButtonThemeData(
        //   style: ButtonStyle(
        //     backgroundColor: WidgetStatePropertyAll(Colors.black),
        //   ),
        // ),
        // scaffoldBackgroundColor: const Color.fromARGB(255, 233, 216, 255),
        cardTheme: const CardThemeData().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.normal,
            color: kColorScheme.onSecondaryContainer,
            fontSize: 16,
          ),
        ),
      ),
      home: const Expenses(), //Todo: Add main Widget here,
      debugShowCheckedModeBanner: false,
    ),
  );
}
