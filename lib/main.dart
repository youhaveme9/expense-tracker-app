// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './models/transaction.dart';
import './expanse_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
      id: 't1',
      title: 'New Shooes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Colors set',
      amount: 12.99,
      date: DateTime.now(),
    ),
  ];

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void press() {
    print(titleController.text);
    print(amountController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses'),
        backgroundColor: Colors.orange.shade700,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 170,
            child: const Card(
              color: Colors.orange,
              child: Text(
                'Chart',
                textAlign: TextAlign.center,
              ),
              elevation: 7,
            ),
          ),

          //input area
          Card(
            elevation: 7,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                    controller: titleController,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                    controller: amountController,
                  ),
                  FlatButton(
                    child: Text('Add Transiction'),
                    onPressed: press,
                    textColor: Colors.orange,
                  )
                ],
              ),
            ),
          ),
          Column(
            children: transaction.map((tx) {
              return ExpenseCard(
                amount: tx.amount,
                date: tx.date,
                title: tx.title,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
