import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    try{ data = ModalRoute.of(context)!.settings.arguments as Map; } // the ! checks to see if it is null
    catch (e){ print('error triggered in home.dart: $e'); }
    print(data);
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: <Widget>[
              Text('home screen'),
              TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: Icon(Icons.edit_location, color: Colors.green),
                label: Text('go to location screen', style: TextStyle(color: Colors.green)),

              )
            ],
          )
      )
    );
  }
}
