import 'package:flutter/material.dart';
import 'package:ehealthsg/screens/controller.dart';
import 'package:ehealthsg/screens/profile/updateProfile.dart';
import 'package:ehealthsg/services/auth.dart';
import 'package:ehealthsg/services/drawer.dart';

class Profile extends StatefulWidget {
  final MyData data;
  Profile({Key key,this.data}):super(key:key);
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String title = 'Home';
  int index = 0;
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text('My Health Profile'),
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
            ),
            ),
          )
        ],
        ),
        body: ListView(
      children:[
        Column(
        children: <Widget>[
          //Personal Infomation
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(image: AssetImage('images/fitness.jpg'),
                  width: 150,
                  ),
                  Column(
                    children: <Widget>[
                      Text('Height'),
                      SizedBox(height: 15),
                      Text('Weight'),
                      SizedBox(height: 15),
                      Text('BMI'),
                    ],
                  ),
                  SizedBox(width: 30,),
                  Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Text(widget.data?.height?? '1.8',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          ),
                          Text(' m'),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Text(widget.data?.weight?? '78',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          ),
                          Text(' kg')
                        ],
                      ),
                      SizedBox(height: 15),
                      Text('22.2',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      ),
                    ],
                  ),
                  SizedBox(width: 30,),
                  Icon(Icons.restore, size: 40,color: Colors.red[100],),
                ],
              ),
              elevation: 10.0,
            ),
          ),
          //Health Records
          Padding(
            padding: const EdgeInsets.only(left:15.0,right: 15.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                child: Column(
                  children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('My Health Records',
                          style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text('Last screening done on'),
                              Text(' 24 Feb 2017',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                              ),
                            ],
                          ), 
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.info_outline,size: 40, color: Colors.red[100],),
                    ),
                    ],
                  ),

                  //Screen Devider
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      color: Colors.grey,
                      height: 1,
                      thickness: 3,
                      endIndent: 0,
                    ),
                  ),
                  //Blood Pressure
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Blood Pressure'),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text('125/78',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text('mmHg')
                            ],
                          ),
                        ),
                    ],
                  ),

                  //Screen Devider
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      color: Colors.grey,
                      height: 1,
                      thickness: 3,
                      endIndent: 0,
                    ),
                  ),

                  //Blood Glucose

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Blood Glucose'),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text('5.0',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text('mmol/L')
                            ],
                          ),
                        ),
                    ],
                  ),

                  //Screen Devider
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      color: Colors.grey,
                      height: 1,
                      thickness: 3,
                      endIndent: 0,
                    ),
                  ),

                  //Cholesterol
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Cholesterol'),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                    Text('Total'),
                                    SizedBox(width: 13,),
                                    Text('LDL'),
                                    SizedBox(width: 14,),
                                    Text('HDL'),
                                    ],
                                ),
                                SizedBox(height: 7,),
                                  Row(
                                  children: [
                                    Text('4.7',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                    ),
                                    SizedBox(width: 13,),
                                    Text('3.0',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                    ),
                                    SizedBox(width: 13,),
                                    Text('1.1',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22,
                                    ),
                                    ),
                                  ],
                                  ),
                                ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 27.0),
                                  child: Text('mmol/L'),
                                ),
                            ],
                          ),
                        ),
                    ],
                  ),

                  //Screen Devider
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      color: Colors.grey,
                      height: 1,
                      thickness: 3,
                      endIndent: 0,
                    ),
                  ),

                  Column(
                    children: [
                      //Other Screening
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Other Screening'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.keyboard_arrow_right,
                            color: Colors.red[100]
                            ),
                          ),
                        ],
                      ),
                      //Immunisation
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Immunisation'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.keyboard_arrow_right,
                            color: Colors.red[100]
                            ),
                          ),
                        ],
                      ),
                      //Discharge Information
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Discharge Information'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.keyboard_arrow_right,
                            color: Colors.red[100]
                            ),
                          ),
                        ],
                      ),
                      //Medication
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Medication'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.keyboard_arrow_right,
                            color: Colors.red[100]
                            ),
                          ),
                        ],
                      ),
                      //Health Risk Assessment
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Health Risk Assessment'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.keyboard_arrow_right,
                            color: Colors.red[100]
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ], 
                ), 
              ),
              elevation: 10.0,
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.only(left:20.0,right: 20.0),
        child: RaisedButton(
          onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=> UpdateProfile()), 
            );
          },
          child: Text('UPDATE MY HEALTH PROFILE',
          style: TextStyle(
            color: Colors.white
          ),
          ),
          color: Colors.red[900],
        ),
      )
      ], 
    ),
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