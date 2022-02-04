import 'dart:convert';

import 'package:http/http.dart' as http;

Future main(List<String> args) async {
  Todo todo = await fetch();
  print(todo.toJson());
}

Future<Todo> fetch() async {
  Uri url = Uri(
      scheme: 'https', host: 'jsonplaceholder.typicode.com', path: '/todos/1');
  http.Response response = await http.get(url);
  Map json = jsonDecode(response.body);

  return Todo.fromJson(json);
}

class Todo {
  final String title;
  final int id;
  final int userId;
  final bool completed;

  Todo(
      {required this.title,
      required this.id,
      required this.userId,
      required this.completed});

  factory Todo.fromJson(var json) {
    return Todo(
        title: json['title'],
        id: json['id'],
        userId: json['userId'],
        completed: json['completed']);
  }

  Map toJson() {
    return {
      'id' : this.id,
      'userId': this.userId,
      'title' : this.title,
      'completed' : this.completed
    };
  }
}
