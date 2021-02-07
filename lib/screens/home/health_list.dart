import 'package:ehealthsg/models/health.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HealthList extends StatefulWidget {
  HealthList({Key key}) : super(key: key);

  @override
  _HealthListState createState() => _HealthListState();
}

class _HealthListState extends State<HealthList> {
  @override
  Widget build(BuildContext context) {
    final healths = Provider.of<List<Health>>(context);
    healths.forEach((health) {
      print(health.name);
      print(health.gender);
      print(health.height);
      print(health.weight);
      print(health.bmi);
    });
    return Container(
      
    );
  }
}