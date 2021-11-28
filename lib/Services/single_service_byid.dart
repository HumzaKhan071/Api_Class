import 'dart:convert';

import 'package:api_class/Model/data.dart';
import 'package:http/http.dart' as http;

getUserById(String id) async {
  var response =
      await http.get(Uri.https("jsonplaceholder.typicode.com", "users/$id"));

  var jsonData = jsonDecode(response.body);

  UserModel user = UserModel(
      id: jsonData["id"],
      name: jsonData["name"],
      email: jsonData["email"],
      username: jsonData["username"]);
  return user;
}
