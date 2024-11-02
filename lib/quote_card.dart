// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCards extends StatelessWidget {
  QuoteCards({
    super.key,
    required this.quote,
    required this.delete,
  });

  final Quote quote;
  final Function delete;

  var FlatButton;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(fontSize: 18, color: Colors.grey[800]),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              quote.author,
              style: TextStyle(fontSize: 18, color: Colors.grey[800]),
            ),
            SizedBox(height: 9.0),
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.delete,
              ),
            ),
            Text(
              "delete quote",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
