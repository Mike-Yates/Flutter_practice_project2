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
    try{
      Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);

      DateTime now = DateTime.parse(data['utc_datetime']); // casting in dart is done using parse
      String offset_str = data['utc_offset'].substring(1,3);
      int offset_int = int.parse(offset_str);
      if(data['utc_offset'].substring(0,1) == '-'){
        offset_int = offset_int * -1;
      }
      now = now.add(Duration(hours: offset_int));
      time = now.toString().substring(11,19);  // only get the time
    } catch (e){
      time = 'could not load time properly';  // added 10 characters before hand because
      print('caught error in world_time.dart. error: $e');
    }

  }


}