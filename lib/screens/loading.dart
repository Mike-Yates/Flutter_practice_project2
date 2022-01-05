import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async{
    Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    Map data = jsonDecode(response.body);
    print('the title is: ${data['title']}');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('init state run (debugging)');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Text('loading screen')
    );
  }
}
