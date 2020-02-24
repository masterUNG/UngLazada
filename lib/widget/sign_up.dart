import 'package:flutter/material.dart';
import 'package:unglazada/utility/my_constant.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // Field
  String name, email, password, address;

  // Method
  Widget nameForm() {
    return TextField(onChanged: (value){
      name = value.trim();
    },
      decoration: InputDecoration(
        helperText: 'Type Your Name',
        labelText: 'Name :',
        icon: Icon(
          Icons.face,
          size: 36.0,
        ),
      ),
    );
  }

  Widget emailForm() {
    return TextField(onChanged: (value){
      email = value.trim();
    },
      decoration: InputDecoration(
        helperText: 'Type Your Email',
        labelText: 'Email :',
        icon: Icon(
          Icons.email,
          size: 36.0,
        ),
      ),
    );
  }

  Widget passwordForm() {
    return TextField(onChanged: (value){
      password = value.trim();
    },
      decoration: InputDecoration(
        helperText: 'Type Your Password',
        labelText: 'Password :',
        icon: Icon(
          Icons.lock,
          size: 36.0,
        ),
      ),
    );
  }

  Widget addressForm() {
    return TextField(onChanged: (value){
      address = value.trim();
    },
      decoration: InputDecoration(
        helperText: 'Type Your Address',
        labelText: 'Address :',
        icon: Icon(
          Icons.home,
          size: 36.0,
        ),
      ),
    );
  }

  Widget signUpButton() {
    return OutlineButton.icon(
      onPressed: () {},
      icon: Icon(Icons.cloud_upload),
      label: Text('Sign Up'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: ListView(
        padding: EdgeInsets.all(50.0),
        children: <Widget>[
          nameForm(),
          emailForm(),
          passwordForm(),
          addressForm(),
          MyConstant().mySizebox,
          signUpButton(),
        ],
      ),
    );
  }
}
