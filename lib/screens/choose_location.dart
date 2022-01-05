import 'package:flutter/material.dart';

class LocationSelection extends StatefulWidget {
  const LocationSelection({Key? key}) : super(key: key);

  @override
  _LocationSelectionState createState() => _LocationSelectionState();
}

class _LocationSelectionState extends State<LocationSelection> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    print('init state run (debugging)');
  }

  @override
  Widget build(BuildContext context) {
    print('build ran (debugging)');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        elevation: 0.0, // removes shadow, makes it appear flat on page
        title: Text('please choose a location'),
      ),
      body: TextButton(
        onPressed: (){
          setState(() {
            counter++;
          });
        },
        child: Text('counter: $counter'),
      )
    );
  }
}
