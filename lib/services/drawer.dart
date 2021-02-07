import 'package:flutter/material.dart';
import 'package:ehealthsg/screens/profile/updateProfile.dart';
import 'package:ehealthsg/screens/profile/Profile.dart';
import 'package:ehealthsg/screens/aboutus/aboutus.dart';
import 'package:ehealthsg/screens/urgentcare/urgentcare.dart';
import 'package:ehealthsg/screens/home/home.dart';
class MyDrawer extends StatelessWidget {
  final Function onTap;
  MyDrawer({this.onTap});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.red[900]),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        //backgroundImage: AssetImage(''),
                        child: Icon( Icons.account_circle_rounded),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Test Account',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'test@nyp.com.sg',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                  ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile(),
                  ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.update),
              title: Text('Update Profile'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UpdateProfile(),
                  ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.quick_contacts_dialer),
              title: Text('Urgent Care'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UrgentCare(),
                  ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About Us'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutUs(),
                  ),
              ),
            ),
          ],
          
        ), //Column
      ), //Drawer
    ); //SizedBox
  }
}