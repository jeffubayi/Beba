
import 'package:flutter/material.dart';
import 'drawer.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Beba - Hitch a Ride';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Sidenav(),
    );
  }
}


