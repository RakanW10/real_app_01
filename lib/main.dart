import 'package:flutter/material.dart';
import 'package:real_app_01/widget/user_transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter app'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 100,
              child: const Text("Chart!"),
              color: Colors.blue,
            ),
            UserTransactions()
          ],
        ),
      ),
    );
  }
}
