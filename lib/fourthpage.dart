import 'package:flutter/material.dart';

void main () {
  runApp(MaterialApp(
    home: null ,
  ));
}

class HomePage extends StatefulWidget {
@override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new  Text("Fake friends"),
        backgroundColor:Colors.blue ,
      ), 
    );
  }
}