import 'package:api_class/Screens/single_user.dart';
import 'package:flutter/material.dart';

import 'Screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Api Class",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SingleUser(),
    );
  }
}
