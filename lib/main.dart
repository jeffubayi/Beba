
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
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    
         Text(
      'Welcome to Beba',
      style: optionStyle,
    ),         
    TextField(
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 22.0),
                  decoration: InputDecoration(
                      contentPadding:  EdgeInsets.symmetric(horizontal: 24),
                      enabledBorder: const OutlineInputBorder(
                       borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: const BorderSide(
                         color: Colors.grey,
              ),
            ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.blue,
                        ), // icon is 48px widget.
                      ),
                      hintText: 'Search for a Ride,Location',
                      hintStyle: TextStyle(fontSize: 22.0)),
                      
                ),
    Text(
      'My Profile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text('Beba'),
       actions: <Widget>[
                IconButton(
                  icon: Image.asset('beba.png',fit: BoxFit.cover,height: 33),
                  onPressed: () {  
                  },
                ),],
          
        backgroundColor:Colors.blue[400]
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
        
      ),
       drawer: Sidenav(),
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
