import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'Quote_Card.dart';

void main() =>{ runApp(MaterialApp(
  home: QuoteList(),
)) };

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'A1', text: 'this is quote 1'),
    Quote(author: 'B2', text: 'this is quote 2'),
    Quote(author: 'C3', text: 'this is quote 3'),
    Quote(author: 'D4', text: 'this is quote 4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awsome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((q) => QuoteCard(
            quote: q,
          deleteFunc: () {
              setState(() {
                quotes.remove(q);
              });
          }
        )).toList(),
      ),
    );
  }
}