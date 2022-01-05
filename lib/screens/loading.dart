import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async{
    //Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/Europe/London'));
    // i tested it with America/New_York
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/America/New_York'));
    Map data = jsonDecode(response.body);
    print(data);

    DateTime now = DateTime.parse(data['utc_datetime']); // casting in dart is done using parse
    String offset_str = data['utc_offset'].substring(1,3);
    int offset_int = int.parse(offset_str);
    if(data['utc_offset'].substring(0,1) == '-'){
      offset_int = offset_int * -1;
    }
    now = now.add(Duration(hours: offset_int));
    print('in New York, it is $now');
  }

  @override
  void initState() {
    super.initState();
    getTime();
    print('init state run (debugging)');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Text('loading screen')
    );
  }
}
