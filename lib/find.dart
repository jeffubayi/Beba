

import 'package:flutter/material.dart';


class FindForm extends StatefulWidget {
  @override
  FindFormState createState() {
    return FindFormState();
  }
}

class FindFormState extends State<FindForm> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search for a Ride") ,backgroundColor: Colors.grey[900]),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          children: <Widget>[
            SizedBox(height: 50.0),
            // TODO: Wrap Username with AccentColorOverride (103)
            // TODO: Remove filled: true values (103)
           TextField(
              decoration: new InputDecoration(
            prefixIcon:  Icon(Icons.location_pin,color:Colors.amber[900]),
            labelText: "From",
            hintText: 'Enter your location..',
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: const BorderSide(
                color: Colors.orange,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.blue),
            ),
          ),
            ),

            SizedBox(height: 12.0,width: 50,),
            // TODO: Wrap Password with AccentColorOverride (103)
            TextField(
              decoration: new InputDecoration(
            prefixIcon:  Icon(Icons.location_pin,color:Colors.amber[900]),
            labelText: "To",
            hintText: 'Enter your destination..',
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: const BorderSide(
                color: Colors.orange,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.blue),
            ),
          ),
            ),
            SizedBox(height: 12.0,width: 50,),
            TextField(
              decoration: new InputDecoration(
            prefixIcon:  Icon(Icons.timer_rounded,color:Colors.amber[900]),
            labelText: "Pickup Time",
            hintText: 'Select time..',
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: const BorderSide(
                color: Colors.orange,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.blue),
            ),
          ),
            ),
             
            SizedBox(height: 12.0,width: 50,),
            TextField(
              decoration: new InputDecoration(
            prefixIcon:  Icon(Icons.event,color:Colors.amber[900]),
            labelText: "Departure Date",
            hintText: 'Select day..',
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: const BorderSide(
                color: Colors.orange,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.blue),
            ),
          ),
            ), 
            ButtonBar(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // TODO: Add a beveled rectangular border to CANCEL (103)
               
                // TODO: Add an elevation to NEXT (103)
                // TODO: Add a beveled rectangular border to NEXT (103)
                RaisedButton.icon(
                   color: Colors.orange[800],
                   onPressed: () {
        // Respond to button press
               },
    icon: Icon(Icons.drive_eta, size: 18),
    label: Text("Find Ride"),
)
              ],
            ),
          
           
          ],
        ),
      ),
       
    );
  }
}

// TODO: Add AccentColorOverride (103)