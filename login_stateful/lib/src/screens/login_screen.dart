import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {

  final formKey = GlobalKey<FormState>();

  Widget build(context){
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(bottom: 25.0)), 
            submitButton()
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Adress',
        hintText: 'you@example.com',
      ),
      validator: (value) {
        // return null if valid
        // otherwise string (with the error message) if invalid
        if(!value.contains('@')){
          return 'Please check your email';
        }
        return null;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Password',
        ),
        validator: (value) {
          if(value.length < 4) {
            return 'Passoword most be at least 4 characters.';
          }
          return  null;
        },
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.blue,
      child: Text('Submit'),
      onPressed: (){
        formKey.currentState.validate();
        if(formKey.currentState.validate()){
          formKey.currentState.reset();
        }
      },
    );
  }
}