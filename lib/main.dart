import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import "dart:convert";
void main () {
  runApp(MaterialApp(
    home: HomePage() ,
  ));
}

class HomePage extends StatefulWidget {
@override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

Map data;
List userData;

  Future getData() async{
    http.Response response = await http.get("https://reqres.in/api/users?page=2");
    data = json.decode(response.body);
    setState(() {
      userData = data ["data"];
    }); 
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new  Text("Fake friends"),
        backgroundColor:Colors.blue ,
      ), 
      body: ListView.builder(
        itemCount: userData == null ? 0 :userData.length ,
         itemBuilder: (BuildContext context, int index){
           return Card(
             child: Row(
               children: <Widget>[
                 CircleAvatar(
                   backgroundImage: NetworkImage(userData [index]["avatar"]),
                 ),
                 
                ] ,
           )
           );
          } ,
    )
    );
}
}