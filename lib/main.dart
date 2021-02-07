import 'package:ehealthsg/screens/wrapper.dart';
import 'package:ehealthsg/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import "package:ehealthsg/models/user.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(  
        home: Wrapper(),
      ),
    );
  }
}

