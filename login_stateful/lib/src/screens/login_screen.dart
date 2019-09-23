import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';
import '../mixins/component_mixin.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen>  with ValidationMixin, ComponentMixin{

  Widget build(context){
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            emailField(validateEmail),
            passwordField(validatePassword),
            Container(margin: EdgeInsets.only(bottom: 25.0)), 
            submitButton()
          ],
        ),
      ),
    );
  }
  
}