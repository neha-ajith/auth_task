import 'package:firebase_tut/firstscreen.dart';
import 'package:firebase_tut/sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase Google Sign In"),
        centerTitle: true,
      ),
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Center(
        child: RaisedButton(
          onPressed: () {
            signInWithGoogle().then((result) {
              if (result != null) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return FirstScreen();
                    },
                  ),
                );
              }
            });
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/google.png',
                height: 40,
                width: 40,
              ),
              Text(
                'Sign in with Google',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          color: Colors.indigo[600],
        ),
      ),
    );
  }
}
