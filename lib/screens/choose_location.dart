import 'package:flutter/material.dart';

class LocationSelection extends StatefulWidget {
  const LocationSelection({Key? key}) : super(key: key);

  @override
  _LocationSelectionState createState() => _LocationSelectionState();
}

class _LocationSelectionState extends State<LocationSelection> {
  int counter = 0;

  void getData() async{
    // simulate we're requesting user's username
    String username = await Future.delayed(Duration(seconds: 2), (){
      return "username received";
    });

    // simulate we are getting their bio
    String bio = await Future.delayed(Duration(seconds: 1), (){
      return "I like coding";
    });

    print('$username, $bio');

  }

  @override
  void initState() {
    super.initState();
    getData();
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
