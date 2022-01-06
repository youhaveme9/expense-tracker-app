import 'package:flutter/material.dart';
import './transaction.dart';
import 'package:intl/intl.dart';
import './expanseCard.dart';

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
    Transaction(
      id: 't3',
      title: 'Toilet Paper',
      amount: 2.49,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Toilet Paper',
      amount: 2.49,
      date: DateTime.now(),
    ),
  ];

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
              color: Colors.purple,
              child: Text(
                'Chart',
                textAlign: TextAlign.center,
              ),
              elevation: 7,
            ),
          ),

          //input area
          Card(
            child: Column(
              children: const <Widget>[
                TextField(
                  textAlign: TextAlign.center,
                ),
              ],
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
