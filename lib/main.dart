import 'package:flutter/material.dart';
import'./models/signup.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MediAsisto',
      theme: ThemeData(primarySwatch: Colors.lightGreen,brightness: Brightness.light
      ),
      home:MyHomePage(),
      
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(title: Text('MediAsisto'),
      ),
      body: Container(
        child: SignUpPage()
        ));
  }
}




class SubBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Opacity(opacity: 0.5,
    
          child: Container(

      height: 590,
      width: 325,
        decoration: BoxDecoration(
          
          image: DecorationImage(
            image: AssetImage("assets/2.jpeg"),
            repeat: ImageRepeat.repeat
          ),
      )
      ),
    );
  }
}
class Bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(width:100,color:Colors.white70,child:Row(children: <Widget>[IconButton(icon: Icon(Icons.person), onPressed: (){print('profile');}),]));
      
  }
}