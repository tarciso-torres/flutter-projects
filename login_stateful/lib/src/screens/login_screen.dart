import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  Widget build(context){
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        child: Column(
          children: <Widget>[],
        ),
      ),
    );
  }
}