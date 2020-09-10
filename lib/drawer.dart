import 'package:flutter/material.dart';
import 'login.dart';
import 'about.dart';
import 'find.dart';
import 'offer.dart';

class Sidenav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BIGR")),
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
              leading: Icon(Icons.drive_eta,color:Colors.lightBlueAccent[400]),
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
              leading: Icon(Icons.drive_eta,color:Colors.lightBlueAccent[400]),
              title: Text('Offer a Ride'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push<void>(context,
                  MaterialPageRoute(builder: (context) => OfferForm()));
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outline,color:Colors.lightBlueAccent[400]),
              title: Text('About Us'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push<void>(context,
                  MaterialPageRoute(builder: (context) => About()));
              },
            ),
            Divider(color: Colors.blueGrey[900],thickness:.6),
            ListTile(
              leading: new Icon(Icons.login_rounded,color:Colors.lightBlueAccent[400]),
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
    );
  }
}


