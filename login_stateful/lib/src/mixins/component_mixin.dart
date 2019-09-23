import 'package:flutter/material.dart';

class ComponentMixin {

  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';  

  Widget emailField(validateEmail) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Adress',
        hintText: 'you@example.com',
      ),
      validator: validateEmail,
      onSaved: (String value){
        email = value;
      },
    );
  }

  Widget passwordField(validatePassword) {
    return TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Password',
        ),
        validator: validatePassword,
        onSaved: (String value){
        password = value;
      },
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.blue,
      child: Text('Submit'),
      onPressed: (){
        if(formKey.currentState.validate()){
          formKey.currentState.save();
          print('Time to post $email and $password to my API');
          
        }
      },
    );
  }
}