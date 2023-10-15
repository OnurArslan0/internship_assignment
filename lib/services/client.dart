import 'dart:convert';

import 'package:http/http.dart' as http;

class Client {
  String url = "https://reqres.in/";

  Future<void> request(String query, Method method,
      {Map<String, dynamic>? body}) async {
    var url = Uri.https(this.url, query);
    final response;

    switch (method) {
      case Method.get:
        response = await http.get(url);
        break;
      case (Method.delete):
        response = await http.delete(url, body: body);
        break;
      case (Method.put):
        response = await http.put(url, body: body);
        break;
      case (Method.post):
        response = await http.post(url, body: body);
        break;
      case (Method.patch):
        response = await http.patch(url, body: body);
        break;
    }

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

enum Method {
  get,
  post,
  put,
  patch,
  delete,
}
