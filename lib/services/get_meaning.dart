import 'package:http/http.dart' as http;
import 'dart:convert';

class APICalls {

  Future<dynamic> getMeaning() async {
    http.Response response = await http.get('https://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=439d4b804bc8187953eb36d2a8c26a02');
    String data = jsonDecode(response.body).toString();
    return data;
  }

}
