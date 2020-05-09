import 'package:flutter/material.dart';
import 'package:health/models/signup.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:page_transition/page_transition.dart';

import '../home.dart';
import 'File.dart';
import 'Medicine.dart';
import 'dashbord.dart';


class Tests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.lightGreenAccent,
          title: Text('TEST REPORTS',
              style: TextStyle(
                  color: Colors.black87, fontFamily: 'Poppins', fontSize: 25)),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.contact_phone),
                onPressed: () {
                  print('calling');
                }),
            IconButton(icon: Icon(Icons.question_answer), onPressed: () {})
          ],
          leading: FlatButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        type: PageTransitionType.leftToRightWithFade,
                        child: SignUpPage()));
              },
              child: Icon(
                Icons.person_pin,
                size: 30,
              ))),
              body: Container(
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[Container(
        height: 590,
        width: 325,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/2.jpeg"), repeat: ImageRepeat.repeat),
        ),)],
              ),
              Container(
                color: Colors.orangeAccent,
                width: 50,
                child: Column(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.home,
                          size: 40,
                          
                        ),
                        padding: EdgeInsetsDirectional.only(
                            start: 4.0, bottom: 50, top: 30),
                        onPressed: () {
                          Navigator.pushReplacement(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          child: Dashbord()));
                          
                        }),
                    IconButton(
                        icon: Icon(
                          Icons.calendar_today,
                          size: 40,
                        ),
                        padding: EdgeInsetsDirectional.only(
                            start: 4.0, bottom: 30, top: 10),
                        onPressed: () {{
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          child: HomePage()));
                }}),
                    IconButton(
                        icon: Icon(MdiIcons.testTube, size: 40,color: Colors.green,),
                        padding: EdgeInsetsDirectional.only(
                            start: 4.0, bottom: 30, top: 30),
                        onPressed: () {Navigator.pushReplacement(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          child: Tests()));
                         
                        }),
                    IconButton(
                        icon: Icon(MdiIcons.medicalBag, size: 40),
                        padding: EdgeInsetsDirectional.only(
                            start: 4.0, bottom: 30, top: 30),
                        onPressed: () {
                          Navigator.pushReplacement(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          child: Medi()));
                        }),
                    IconButton(
                        icon: Icon(Icons.insert_drive_file, size: 40),
                        padding: EdgeInsetsDirectional.only(
                            start: 4.0, bottom: 30, top: 30),
                        onPressed: () {
                          Navigator.pushReplacement(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          child: File()));
                        }),
                    IconButton(
                        icon: Icon(Icons.settings, size: 40),
                        padding: EdgeInsetsDirectional.only(
                            start: 4.0, bottom: 30, top: 30),
                        onPressed: () {
                          print('pressed');
                        })
                  ],
                ),
              ),
            ],
          ),
        )
              
    );
  }
}
