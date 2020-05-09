import 'package:flutter/material.dart';
import 'package:health/home.dart';
import 'package:health/models/Tests.dart';
import 'package:health/models/message.dart';
import 'package:health/models/signup.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:page_transition/page_transition.dart';

import 'File.dart';
import 'Medicine.dart';

class Dashbord extends StatefulWidget {
  @override
  _DashbordState createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  var name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.lightGreenAccent,
            title: Text('Mediassist',
                style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Poppins',
                    fontSize: 25)),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.contact_phone),
                  onPressed: () {
                    print('calling');
                  }),
              IconButton(icon: Icon(Icons.question_answer), onPressed: () {Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  child: Message()));})
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
                children: <Widget>[SubBar()],
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
                          color: Colors.green,
                        ),
                        padding: EdgeInsetsDirectional.only(
                            start: 4.0, bottom: 50, top: 30),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(
                          Icons.calendar_today,
                          size: 40,
                        ),
                        padding: EdgeInsetsDirectional.only(
                            start: 4.0, bottom: 30, top: 10),
                        onPressed: () {
                          {
                            Navigator.pushReplacement(
                                context,
                                PageTransition(
                                    type: PageTransitionType.fade,
                                    child: HomePage()));
                          }
                        }),
                    IconButton(
                        icon: Icon(MdiIcons.testTube, size: 40),
                        padding: EdgeInsetsDirectional.only(
                            start: 4.0, bottom: 30, top: 30),
                        onPressed: () {
                          Navigator.pushReplacement(
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
        ));
  }
}

class SubBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 590,
      width: 325,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/2.jpeg"), repeat: ImageRepeat.repeat),
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding:EdgeInsets.only(top:20.0),
            child: Column(
              children: <Widget>[Text('NEWS',style: TextStyle(fontWeight:FontWeight.bold),),
                Image.asset('assets/6.png',
                            width: 300, height: 100, fit: BoxFit.fill),
              ],
            ),
            color: Colors.lightGreen,
            height: 150,
            width: 340,
          ),
          Row(
            children: <Widget>[
              Container(
                padding:EdgeInsets.only(top:10,left:10,right: 10,bottom: 10),
                width: 200,
                height: 300,
                child: Image.asset('assets/3.png',
                    width: 300, height: 150, fit: BoxFit.fill),
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding:EdgeInsets.only(top:10,left:0,right: 10,bottom: 10),
                    width: 125,
                    height: 125,
                    
                    child: Image.asset('assets/4.png',
                        width: 300, height: 150, fit: BoxFit.fill),
                  ),
                  Container(
                    padding:EdgeInsets.only(top:10,left:0,right: 10,bottom: 10),
                    width: 125,
                    height: 175,
                    
                    child: Image.asset('assets/5.png',
                        width: 300, height: 150, fit: BoxFit.fill),
                  )
                ],
              )
            ],
          ),
          Row(children: <Widget>[Container(
                    padding:EdgeInsets.all(10),
                    color: Colors.yellowAccent,
                    width: 165,
                    height: 140,),Container(
                    padding:EdgeInsets.all(10),
                    color: Colors.blue,
                    width: 160,
                    height: 140,)],)
        ],
      ),
    );
  }
}
