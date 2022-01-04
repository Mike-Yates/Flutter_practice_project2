import 'package:flutter/material.dart';

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
  List<String> quotes = ['super inspiring quote 1', 'Amazingly worded num 2', 'another quote 3'];
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
        children: quotes.map((quote) => Text(quote)).toList(),
      )
    );
  }
}
