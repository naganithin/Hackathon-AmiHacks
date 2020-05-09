import 'package:page_transition/page_transition.dart';

import 'package:flutter/material.dart';
import 'package:health/models/dashbord.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

var name;

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.lightGreenAccent,
          title: Text('Sign Up',
              style: TextStyle(
                  color: Colors.black87, fontFamily: 'Poppins', fontSize: 15)),
        ),
        body: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 18, right: 18),
              child: Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Name',
                          icon: Icon(Icons.person),
                        ),
                        onSaved: (String value) {
                          name = String;
                        },
                        keyboardType: TextInputType.text,
                      ),
                      new TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Mobile',
                          icon: Icon(Icons.phone),
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                      new TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          icon: Icon(Icons.mail),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      new TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          icon: Icon(Icons.chevron_right),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 15,
                    right: -15,
                    child: FlatButton(
                      onPressed: () {
                        print(name);
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeftWithFade,
                                child: Dashbord()));
                      },
                      color: Colors.lightGreenAccent,
                      padding: EdgeInsets.all(13),
                      shape: CircleBorder(),
                      child: Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                  )
                ],
              ),
              height: 360,
              width: double.infinity,
            ),
          ],
        ));
  }
}
