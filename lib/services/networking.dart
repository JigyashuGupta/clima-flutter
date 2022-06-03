import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{
  NetworkHelper(this.url);
  final String url;

  Future getData() async{
    var url = Uri.parse(this.url);
    http.Response response = await http.get(url);
    print('Got data from the site!');

    if(response.statusCode == 200){
      String data = response.body;
      return jsonDecode(data);
    }
    else{
      print(response.statusCode);
  }
  }

}