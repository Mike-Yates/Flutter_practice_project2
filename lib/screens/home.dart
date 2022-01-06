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
    try{
      data = data.isEmpty ? ModalRoute.of(context)!.settings.arguments as Map : data;
    } // the ! checks to see if it is null
    catch (e){ print('error triggered in home.dart: $e'); }
    // print(data);
    String imagePath = data['isDayTime'] ? 'daytime.jpg' : 'night.jpg';

    return Scaffold(
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/$imagePath'),
                  fit: BoxFit.cover,
                )
              ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  TextButton.icon(
                    onPressed: () async {
                      dynamic newData = await Navigator.pushNamed(context, '/location');
                      // this will return with the new map data after the suer selects a city from the choose location screen
                      setState(() {
                        data = newData;
                      });
                    },
                    icon: Icon(Icons.edit_location, color: Colors.grey[300]),
                    label: Text(
                        'Edit location',
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.grey[300],
                        ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    data['location'],
                    style: const TextStyle(
                      fontSize: 28.0,
                      letterSpacing: 2.0,
                      color: Colors.white,
                    )
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(data['time'], style: const TextStyle(
                        fontSize: 65.0,
                        color: Colors.white,
                      ))
                    ],
                  ),
                ],
              ),
            ),
          )
      )
    );
  }
}
