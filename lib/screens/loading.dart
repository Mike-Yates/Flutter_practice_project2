import 'package:flutter/material.dart';
import '../services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading';
  void setUpWorldTime() async{
    WorldTime instance = WorldTime(location: 'London', url: 'Europe/London', flag: 'England.png');
    await instance.getTime();
    setState(() {
      time = 'The time in ${instance.location} is ${instance.time.substring(11,19)}';
    });
  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Text(time),
        )
    );
  }
}
