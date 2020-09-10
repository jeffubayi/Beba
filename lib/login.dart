import 'package:flutter/material.dart';
import 'main.dart';
import 'drawer.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up") ,backgroundColor: Colors.blue[400]),
      drawer: Sidenav(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset('images/beba.png',height: 180),
                SizedBox(height: 1.0),
              ],
            ),
            // TODO: Wrap Username with AccentColorOverride (103)
            // TODO: Remove filled: true values (103)
            TextField(
              decoration: new InputDecoration(
            prefixIcon:  Icon(Icons.person_add),
            labelText: "Username",
            hintText: 'Enter your name',
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
            prefixIcon:  Icon(Icons.attach_email),
            labelText: "Email",
            hintText: 'Enter your Email',
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
            prefixIcon:  Icon(Icons.enhanced_encryption),
            labelText: "Password",
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
            ButtonBar(
              children: <Widget>[
                // TODO: Add a beveled rectangular border to CANCEL (103)
               
                // TODO: Add an elevation to NEXT (103)
                // TODO: Add a beveled rectangular border to NEXT (103)
                MaterialButton(
  onPressed: () {

  },
  shape: const StadiumBorder(),
  textColor: Colors.black,
  color: Colors.blue[300],
  splashColor: Colors.blue[900],
  disabledColor: Colors.grey,
  disabledTextColor: Colors.white,
  child: Text('Login'),
),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: Add AccentColorOverride (103)