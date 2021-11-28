import 'package:api_class/Services/single_service_byid.dart';
import 'package:flutter/material.dart';

class SingleUser extends StatefulWidget {
  const SingleUser({Key? key}) : super(key: key);

  @override
  _SingleUserState createState() => _SingleUserState();
}

class _SingleUserState extends State<SingleUser> {
  hello() {
    setState(() {
      hellloo = abc;
    });
  }

  var hellloo = "";
  String abc = "1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              abc = value;
            },
          ),
          TextButton(
              onPressed: () {
                hello();
              },
              child: Text("Search")),
          FutureBuilder(
              future: getUserById(abc),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return ListTile(
                    leading: Text(snapshot.data.id.toString()),
                    subtitle: Text(snapshot.data.username),
                    
                  );
                }
              }),
        ],
      ),
    );
  }
}
