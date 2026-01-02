import 'package:flutter/material.dart';
import 'package:expense_tracker/expenses.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Expenses(), //Todo: Add main Widget here,
      debugShowCheckedModeBanner: false,
    ),
  );
}
