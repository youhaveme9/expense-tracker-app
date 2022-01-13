import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class ExpenseCard extends StatefulWidget {
  const ExpenseCard({Key? key}) : super(key: key);

  @override
  _ExpenseCardState createState() => _ExpenseCardState();
}

class _ExpenseCardState extends State<ExpenseCard> {
  final List<Transaction> _userTransection = [
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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransection.map((tx) {
        return Card(
          elevation: 7,
          margin: const EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 5,
          ),
          child: Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.orange,
                    width: 3,
                  ),
                ),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 20,
                ),
                child: Text(
                  tx.amount.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.orange,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    tx.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    DateFormat.yMMMEd().format(tx.date),
                    style: const TextStyle(color: Colors.black54),
                  )
                ],
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
