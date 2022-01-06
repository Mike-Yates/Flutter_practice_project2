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
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: Icon(Icons.edit_location, color: Colors.grey[900]),
                  label: Text(
                      'Edit location',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.grey[900],
                      ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  data['location'],
                  style: const TextStyle(
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  )
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(data['time'], style: const TextStyle(
                      fontSize: 65.0,
                    ))
                  ],
                ),
              ],
            ),
          )
      )
    );
  }
}
