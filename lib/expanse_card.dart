import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExpenseCard extends StatelessWidget {
  final double amount;
  final DateTime date;
  final String title;

  ExpenseCard({
    required this.amount,
    required this.date,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
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
              amount.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.orange,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              Text(
                DateFormat.yMMMEd().format(date),
                style: const TextStyle(color: Colors.black54),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class $ {}
