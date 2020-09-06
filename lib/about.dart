import 'package:flutter/material.dart';
import 'drawer.dart';

class About extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About Beba")),
      drawer: Sidenav(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 50.0),
            Column(
              children: <Widget>[
                Image.asset('Carpooling.png'),
                SizedBox(height: 7.0),
              ],
            )
           ] 
           )
           
      )
    );
  }
}