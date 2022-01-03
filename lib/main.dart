import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: WidgetTree(),
  ));
}


class WidgetTree extends StatelessWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
        shadowColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ronaldo.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.white,
              thickness: 1.0,
            ),
            Text("NAME", style: TextStyle(color: Colors.grey, letterSpacing: 2.0,)),
            SizedBox(height:10.0),
            Text("Cristiano Ronaldo", style: TextStyle(color: Colors.yellow, letterSpacing: 2.0, fontSize: 28.0, fontWeight: FontWeight.bold)),
            SizedBox(height:30.0),

            Text("Total Goals", style: TextStyle(color: Colors.grey, letterSpacing: 2.0,)),
            SizedBox(height:10.0),
            Text('1095', style: TextStyle(color: Colors.yellow, letterSpacing: 2.0, fontSize: 28.0, fontWeight: FontWeight.bold)),
            SizedBox(height:30.0),

            Row(
              children: <Widget>[
                Icon(Icons.email, color: Colors.grey[400]),
                SizedBox(width:10.0),
                Text("CR7Goat@gmail.com", style: TextStyle(color: Colors.grey, letterSpacing: 1.0, fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),

    );
  }
}

class Test extends StatefulWidget { // this is the widget, it creates a state that is able to hold data
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();  // _TestState() instantiates the class TestState which is a state object
  // this is building a state object for our stateful widget
}

class _TestState extends State<Test> {
  @override
  int counter = 1;

  Widget build(BuildContext context) {
    return Container();
  }
}
