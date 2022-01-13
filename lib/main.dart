import 'package:flutter/material.dart';
import './widgets/user_transaction.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses'),
        backgroundColor: Colors.orange.shade700,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const <Widget>[
            // Container(
            //   width: double.infinity,
            //   height: 170,
            //   child: const Card(
            //     color: Colors.orange,
            //     child: Text(
            //       'Chart',
            //       textAlign: TextAlign.center,
            //     ),
            //     elevation: 7,
            //   ),
            // ),
            UserTransaction(),
          ],
        ),
      ),
    );
  }
}
