import 'package:flutter/material.dart';
import 'login.dart';
import 'about.dart';
import 'find.dart';
import 'offer.dart';
import 'rate.dart';

class Sidenav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text('Beba'),
       actions: <Widget>[
                IconButton(
                  icon:new Image(image: AssetImage("assets/images/beba.png")),
                  
                  onPressed: () {  
                  },
                ),],
          
        backgroundColor:Colors.grey[900]
      ),
     // appBar: AppBar(title: Text("Beba")),
      drawer: Drawer(
        child: ListView(
           
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Beba'),
              decoration: BoxDecoration(
                image:DecorationImage(
                  image: AssetImage("Carpooling.png"),
                  fit:BoxFit.cover)
              ),
            ),
            ListTile(
              leading: Icon(Icons.drive_eta,color:Colors.amber[900]),
              title: Text('Find a Ride'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                Navigator.push<void>(context,
                  MaterialPageRoute(builder: (context) => FindForm()));
              },
            ),
            ListTile(
              leading: Icon(Icons.drive_eta,color:Colors.amber[900]),
              title: Text('Offer a Ride'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push<void>(context,
                  MaterialPageRoute(builder: (context) => OfferForm()));
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outline,color:Colors.amber[900]),
              title: Text('About Us'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push<void>(context,
                  MaterialPageRoute(builder: (context) => About()));
              },
            ),
             ListTile(
              leading: Icon(Icons.star_border,color:Colors.amber[900]),
              title: Text('Reviews'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push<void>(context,
                  MaterialPageRoute(builder: (context) => RateScreen()));
              },
            ),
            Divider(color: Colors.blueGrey[900],thickness:.6),
            ListTile(
              leading: new Icon(Icons.login_rounded,color:Colors.amber[900]),
              title: Text("Sign Up"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push<void>(context,
                  MaterialPageRoute(builder: (context) => Login()));
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            title: Text('Get a Ride'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('My Profile'),
          ),
        ],
        selectedItemColor: Colors.orange[800],
      )
    );
  }
}


