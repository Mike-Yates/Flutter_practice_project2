import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: WidgetTree(),
  ));
}


class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  // data gets defined here
  int goalsScored = 1095;

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState( (){ // this triggers the build statement.
            goalsScored++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.pinkAccent,
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
            Text('$goalsScored', style: TextStyle(color: Colors.yellow, letterSpacing: 2.0, fontSize: 28.0, fontWeight: FontWeight.bold)),
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
