import 'package:http/http.dart' as http;
import 'dart:convert';

class APICalls {

  String url = 'https://mashape-community-urban-dictionary.p.rapidapi.com';
  String apiKey = '5fda5d440emshb98e668d47e5e4cp191761jsnd647120abe73';

  Future<dynamic> getMeaning(String searchTerm) async {
    http.Response response = await http.get(
      '$url/define?term=$searchTerm',
      headers: {
        'x-rapidapi-host': "mashape-community-urban-dictionary.p.rapidapi.com",
        'x-rapidapi-key': '$apiKey'
      });

    String data = response.body;
    var decodedData = jsonDecode(data);
    return decodedData;
  }

}
