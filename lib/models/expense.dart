import 'package:uuid/uuid.dart';

const uuid =
    Uuid(); //doing out side of the class because it doesn't belongs to this class necessarily. instead it's just a utiliy object. which we can use anwhere inthis file.

enum Category { food, travel, leisure, work }

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();
  String? id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}
