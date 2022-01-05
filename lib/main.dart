import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(const MaterialApp(
    home: WidgetTree(),
  ));
}

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  _WidgetTreeState createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  List<Quote> quotes =
  [
    Quote(text: 'super inspiring quote 1', author: 'Mike'),
    Quote(text: 'Amazingly worded num 2', author: "Mik"),
    Quote(text: 'another quote 3', author: 'Mikee'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quotes'),
        //backgroundColor: Colors.grey[400],
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body:Column(
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
      )
    );
  }
}
