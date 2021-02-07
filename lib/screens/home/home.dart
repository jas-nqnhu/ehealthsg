import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text('Fun and Healthy Activities',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
          ),),
        ),
        CarouselSlider(
         items: [
           //Carousell Image 1
           Container(
             margin: EdgeInsets.all(5.0),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10.0),
               image: DecorationImage(
                 image: AssetImage('images/act/activity1.jpg'),
                 fit: BoxFit.cover,
               ),
             ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: <Widget>[
                  Text(
                    'Playing Football',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Lowers Body Fat and Improves Muscle Tone, teaches Coordination ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
               ],
             ),
           ),
          //Carousell Image 2
           Container(
             margin: EdgeInsets.all(5.0),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10.0),
               image: DecorationImage(
                 image: AssetImage('images/act/activity2.jpg'),
                 fit: BoxFit.cover,
               ),
             ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: <Widget>[
                  Text(
                    'Playing Basketball',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Strengthens muscular endurance. Playing basketball requires agility, strength, and stamina',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
               ],
             ),
           ),
          //Carousell Image 3
           Container(
             margin: EdgeInsets.all(5.0),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10.0),
               image: DecorationImage(
                 image: AssetImage('images/act/activity3.jpg'),
                 fit: BoxFit.cover,
               ),
             ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: <Widget>[
                  Text(
                    'Swimming',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Keeps your heart rate up but takes some of the impact stress off your body.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
               ],
             ),
           ),
         ],
         options: CarouselOptions(
           height: 180.0,
           enlargeCenterPage: true,
           autoPlay: true,
           aspectRatio: 16/9,
           autoPlayCurve: Curves.fastLinearToSlowEaseIn,
           enableInfiniteScroll: true,
           autoPlayAnimationDuration: Duration(
             milliseconds: 800,
           ),
           viewportFraction: 0.8,
         ),
         ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text('Articles',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
          ),),
        ),
        Card(
          elevation: 5,
          shape: Border(right: BorderSide(color: Colors.red, width: 5,)),
          child: ListTile(
            leading: Image(image: AssetImage('images/articles/article1.jpg'),),
            title: Text('Singapore approves Moderna Covid-19 vaccine first shipment to arrive around March'),
            subtitle: Text('FEB 3, 2021'),
            tileColor: Colors.white,
          ),
        ),

        Card(
          elevation: 5,
          shape: Border(right: BorderSide(color: Colors.red, width: 5,)),
          child: ListTile(
            leading: Image(image: AssetImage('images/articles/article2.jpg'),),
            title: Text('No Gym Required: How to Get Fit at Home'),
            subtitle: Text('FEB 1, 2021'),
            tileColor: Colors.white,
          ),
        ),
        
        Card(
          elevation: 5,
          shape: Border(right: BorderSide(color: Colors.red, width: 5,)),
          child: ListTile(
            leading: Image(image: AssetImage('images/articles/article3.jpg'),),
            title: Text('All You Need to Know About Childhood Immunisations'),
            subtitle: Text('FEB 1, 2021'),
            tileColor: Colors.white,
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
              'Health Articles'
              ),
              IconButton(
                icon: Icon(Icons.keyboard_arrow_right),
                iconSize: 24.0, 
                color: Colors.lightGreen,
                onPressed: () {  },
              ),
            ], 
          ),
        ),
      ],
    );
  }
}