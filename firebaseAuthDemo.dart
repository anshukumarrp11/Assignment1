import 'package:flutter/services.dart';

import 'regster.dart';
import 'signIn.dart';
import 'package:flutter/material.dart';

class FirebaseAuthDemo extends StatefulWidget {
  @override
  _FirebaseAuthDemoState createState() => _FirebaseAuthDemoState();
}

class _FirebaseAuthDemoState extends State<FirebaseAuthDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF73AEF5),
                Color(0xFF61A4F1),
                Color(0xFF478DE0),
                Color(0xFF398AE5),
              ],
              stops: [0.1, 0.4, 0.7, 0.9],
            ),
          ),

          // we will give media query height
          // double.infinity make it big as my parent allows
          // while MediaQuery make it big as per the screen

          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            // even space distribution
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/logos/Indiagate.png"))),
              ),
              Column(
                children: <Widget>[
                  // the login button
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () => _pushPage(context, SignIn()),
                    // defining the shape
                    color: Color(0xFFFFFFFF),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ),
                  // creating the signup button
                  SizedBox(height: 20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () => _pushPage(context, Register()),
                    color: Color(0xFFFFFFFF),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _pushPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => page),
    );
  }
}
