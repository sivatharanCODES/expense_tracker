import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});
  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  // var _enteredTitle = '';

  // void _saveTitleInput(String inputValue) {
  //   _enteredTitle = inputValue;
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          maxLength: 50,
          decoration: const InputDecoration(
            label: Text('Title'),
          ),
          controller: _titleController,
        ),
        TextField(
          maxLength: 50,
          controller: _amountController,
          keyboardType: const TextInputType.numberWithOptions(
            decimal: true,
          ),
          decoration: const InputDecoration(
            label: Text('Amount'),
          ),
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                print(
                  _titleController.text,
                );
                print(
                  _amountController.text,
                );
              },
              child: const Text('Save Expense'),
            ),
            const SizedBox(
              width: 12,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Cancel'),
            ),
          ],
        ),
      ],
    );
  }
}
