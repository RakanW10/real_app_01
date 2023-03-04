import 'package:flutter/material.dart';

class NewTransation extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;
  NewTransation({super.key, required this.addTx});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: "Title"),
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(labelText: "Amount"),
            ),
            TextButton(
              onPressed: () => addTx(
                titleController.text,
                double.parse(amountController.text),
              ),
              style: TextButton.styleFrom(
                foregroundColor: Colors.purple,
              ),
              child: const Text("Add Transaction"),
            ),
          ],
        ),
      ),
    );
  }
}
