import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage('images/logo.jpg'),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('E-Health was build to make it more convenience for patients and encourage citizen to have a healthy lifestyle.\n \n Objective of this app: \n •	Affordable price, time saving \n •	Reduce unnecessary physical contact to prevent the speared of virus. \n •	Make it more convenience for patients.'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.grey,
                height: 1,
                thickness: 1,
                endIndent: 0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Version 1.0',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: Colors.grey
              ),
              ),
            ),

            //Screen Devider
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.grey,
                height: 1,
                thickness: 1,
                endIndent: 0,
              ),
            ),
            ListTile(
              leading: Icon(Icons.email, color: Colors.red[200],),
              title: Text('Email'),
            ),
            //Screen Devider
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.grey,
                height: 1,
                thickness: 1,
                endIndent: 0,
              ),
            ),

            ListTile(
              leading: Icon(Icons.phone, color: Colors.lightGreen,),
              title: Text('Contact Us'),
            ),

            //Screen Devider
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.grey,
                height: 1,
                thickness: 1,
                endIndent: 0,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Developed by Jasmine Nguyen',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.0
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}