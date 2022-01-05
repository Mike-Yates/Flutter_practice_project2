import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{
  String location;  // going to be printed on the screen
  String time = 'default';
  String url;  // used as a uri endpoint
  String flag;  // image url or file name

  // this.location is a named parameter location that auto assigns it to the local var defined above
  WorldTime({ required this.location, required this.url, required this.flag });



  Future<void> getTime() async{
    //Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/Europe/London'));
    // i tested it with America/New_York
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
    Map data = jsonDecode(response.body);
    // print(data);

    DateTime now = DateTime.parse(data['utc_datetime']); // casting in dart is done using parse
    String offset_str = data['utc_offset'].substring(1,3);
    int offset_int = int.parse(offset_str);
    if(data['utc_offset'].substring(0,1) == '-'){
      offset_int = offset_int * -1;
    }
    now = now.add(Duration(hours: offset_int));
    // print('in New York, it is $now');
    time = now.toString();
  }


}