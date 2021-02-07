import 'package:flutter/material.dart';
import 'package:ehealthsg/services/drawer.dart';
import 'package:ehealthsg/screens/home/home.dart';
import 'package:ehealthsg/screens/profile/profile.dart';
import 'package:ehealthsg/screens/aboutus/aboutus.dart';
import 'package:ehealthsg/screens/urgentcare/urgentcare.dart';
import 'package:ehealthsg/services/auth.dart';

class MyData{
  final String height;
  final String weight;
  MyData(this.height,this.weight);
}

class Controller extends StatefulWidget {
// This widget is the root of your application.
  final MyData data;
  Controller({Key key,this.data}):super(key:key);
  @override
  
  _ControllerState createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  String title = 'Home';
  int index = 0;
  
  List<Widget> list = [Home(), Profile(), AboutUs(), UrgentCare()];
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text(title),
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            onPressed: ()async {
              await _auth.signOut();
            }, 
            icon: Icon(Icons.person,
            color: Colors.white),
            label: Text('logout',
            style: TextStyle(
              color: Colors.white,
            ),),
          )
        ],
        ),
         body: list[index],
        drawer: MyDrawer(onTap: (context, i, txt) {
          setState(() {
            index = i;
            title = txt;
            Navigator.pop(context);
          });
        }),
      ),
    );
  }
}