import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function() deleteFunc;
  QuoteCard({required this.quote, required this.deleteFunc});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6,),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 8),
            FlatButton.icon(
              onPressed: deleteFunc,
              label: Text('Delete'),
              icon: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
