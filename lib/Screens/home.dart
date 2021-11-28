import 'package:api_class/Services/user_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getUser(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return  const Center(
                child: CircularProgressIndicator(),
                
              );
              // return Center(child: Text("No Data"),)
            } else {
              return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Text(snapshot.data[index].id.toString()),
                      subtitle: Text(snapshot.data[index].username),
                      
                    );
                  });
            }
          }),
    );
  }
}
