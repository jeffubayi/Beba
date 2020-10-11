
import 'package:flutter/material.dart';
import 'package:rating_dialog/rating_dialog.dart';

class _ExampleScreenState extends State<RateScreen> {
  void _showRatingDialog() {
    // We use the built in showDialog function to show our Rating Dialog
    showDialog(
        context: context,
        barrierDismissible: true, // set to false if you want to force a rating
        builder: (context) {
          return RatingDialog(
            icon:new Image(image: AssetImage("assets/images/beba.png")), // set your own image/icon widget
            title: "Please rate your trip with us",
            description:
                "Tap a star to set your rating.Tell us more about your ride.",
            submitButton: "SUBMIT",
            //alternativeButton: "Contact us instead?", // optional
            // positiveComment: "We are so happy to hear :)", // optional
            // negativeComment: "We're sad to hear :(", // optional
            accentColor: Colors.amber[900], // optional
            onSubmitPressed: (int rating) {
              print("onSubmitPressed: rating = $rating");
              // TODO: open the app's page on Google Play / Apple App Store
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rate your ride"),
        backgroundColor: Colors.grey[850]
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text("Rate driver"),
            onPressed: _showRatingDialog,
          ),
        ),
      ),
    );
  }
}

class RateScreen extends StatefulWidget {
  RateScreen();

  @override
  _ExampleScreenState createState() => new _ExampleScreenState();
}