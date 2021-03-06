import 'dart:convert';

import 'package:api_class/Model/data.dart';
import 'package:http/http.dart' as http;

getUser() async {
  var response =
      await http.get(Uri.https("jsonplaceholder.typicode.com", "users"));

  var jsonData = jsonDecode(response.body);
  List<UserModel> users = [];

  for (var i in jsonData) {
    UserModel user = UserModel(
        id: i["id"],
        name: i["name"],
        email: i["email"],
        username: i["username"],);
    users.add(user);
  }

  return users;


  

}
