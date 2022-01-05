import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(const MaterialApp(
    home: WidgetTree(),
  ));
}

Card quoteCard(quote){
  return Card(
    margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
    // color: Colors.blue,
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            quote.text,
            style: TextStyle(
                color: Colors.grey[600]
            )
          ),
          const SizedBox(height: 12.0),
          Text(
              quote.author,
              style: TextStyle(
                  color: Colors.grey[800]
              )
          ),
        ]
      ),
    )
  );
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
        children: quotes.map((quote) => quoteCard(quote)).toList(),
      )
    );
  }
}
