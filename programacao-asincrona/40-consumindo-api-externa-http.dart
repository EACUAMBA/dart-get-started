//Usamos o as para poder colocar todas as funções em um objecto chamado http.
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

Future main(List<String> args) async {
  final json = await fetch();
  print(json['title']);
}

Future<Map> fetch() async {
  Uri url = Uri(
      scheme: 'https', host: 'jsonplaceholder.typicode.com', path: '/todos/1');
  http.Response response = await http.get(url);
  print(response.body);
  var json = jsonDecode(response.body);
  return json;
}
