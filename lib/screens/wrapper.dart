import 'package:ehealthsg/screens/controller.dart';
import 'package:ehealthsg/screens/authenticate/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ehealthsg/models/user.dart';

class Wrapper extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    
    if(user == null){
      return Authenticate();
    }
    else{
      return Controller();
    }
    //return either Home or Authenticate widget
    
  }
}