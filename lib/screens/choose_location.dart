import 'package:flutter/material.dart';

class LocationSelection extends StatefulWidget {
  const LocationSelection({Key? key}) : super(key: key);

  @override
  _LocationSelectionState createState() => _LocationSelectionState();
}

class _LocationSelectionState extends State<LocationSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        elevation: 0.0, // removes shadow, makes it appear flat on page
        title: Text('please choose a location'),
      ),
      body: Text('we are on the choose location screen. replace this later ')
    );
  }
}
