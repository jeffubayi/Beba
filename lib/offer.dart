import 'package:flutter/material.dart';
import 'drawer.dart';


class OfferForm extends StatefulWidget {
  @override
  OfferFormState createState() {
    return OfferFormState();
  }
}

class OfferFormState extends State<OfferForm> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Share your Ride") ,backgroundColor: Colors.blue[400]),
      drawer: Sidenav(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 50.0),
            // TODO: Wrap Username with AccentColorOverride (103)
            // TODO: Remove filled: true values (103)
           TextField(
              decoration: new InputDecoration(
            prefixIcon:  Icon(Icons.location_pin),
            labelText: "From",
            hintText: 'Enter your location..',
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: const BorderSide(
                color: Colors.grey,
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
            prefixIcon:  Icon(Icons.location_pin),
            labelText: "To",
            hintText: 'Enter your destination..',
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: const BorderSide(
                color: Colors.grey,
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
            prefixIcon:  Icon(Icons.event),
            labelText: "Select Date",
            hintText: 'Pickup time and day..',
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: const BorderSide(
                color: Colors.grey,
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
            prefixIcon:  Icon(Icons.trip_origin),
            labelText: "Pick up",
            hintText: 'Enter meeting point.. ',
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: const BorderSide(
                color: Colors.grey,
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
            prefixIcon:  Icon(Icons.pin_drop),
            labelText: "Drop off",
            hintText: 'Enter end point..',
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.blue),
            ),
          ),
            ),
            ButtonBar(
              children: <Widget>[
                // TODO: Add a beveled rectangular border to CANCEL (103)
               
                // TODO: Add an elevation to NEXT (103)
                // TODO: Add a beveled rectangular border to NEXT (103)
                RaisedButton.icon(
                   color: Colors.blue[400],
                   onPressed: () {
        // Respond to button press
               },
    icon: Icon(Icons.drive_eta, size: 18),
    label: Text("Offer Ride"),
)

           

              ],
              )
          ]
        )
        
      ),
    );
  }
}

// TODO: Add AccentColorOverride (103)