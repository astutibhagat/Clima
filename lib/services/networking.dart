import 'package:http/http.dart' as http;
import 'dart:convert';
class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);

//        var longitude=jsonDecode(data)['coord']['lon'];
//        print(longitude);
//        var weatherDesp=jsonDecode(data)['weather'][0]['description'];
//        print(weatherDesp);
      // var decodeData = jsonDecode(data);
    }
    else {
      print(response.statusCode);
    }
  }
}