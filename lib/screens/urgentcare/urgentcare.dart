import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrgentCare extends StatefulWidget {
  @override
  _UrgentCareState createState() => _UrgentCareState();
}

class _UrgentCareState extends State<UrgentCare> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('What would you like to do today?',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24.0
          ),
          ),
        ),
        Divider(
          thickness: 3,
        ),
        ListTile(
          leading: Icon(Icons.phone),
          onTap: () => launch("tel://555"),
          title: Text('Call Urgent Care',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
          ),
        ),
        Divider(
          thickness: 3,
        ),

        ListTile(
          leading: Icon(Icons.calendar_today),
          title: Text('Book Appointment',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
          ),
        ),
        Divider(
          thickness: 3,
        ),

        ListTile(
          leading: Icon(Icons.fact_check_outlined),
          title: Text('Look up symptom',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
          ),
        ),
        Divider(
          thickness: 3,
        ),
      ],
    );
  }
}