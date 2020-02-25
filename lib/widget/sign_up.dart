import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:unglazada/utility/my_constant.dart';
import 'package:unglazada/utility/normal_dialog.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // Field
  String name, email, password, address;

  // Method
  Widget nameForm() {
    return TextField(
      onChanged: (value) {
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
    return TextField(keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
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
    return TextField(
      onChanged: (value) {
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
    return TextField(
      onChanged: (value) {
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
      onPressed: () {
        print('You Click SignUp');

        if (name == null ||
            name.isEmpty ||
            email == null ||
            email.isEmpty ||
            password == null ||
            password.isEmpty ||
            address == null ||
            address.isEmpty) {
          print('Have Space');
          normalDialog(context, 'Have Space', 'Please Fill Every Blank');
        } else {
          registerThread();
        }
      },
      icon: Icon(Icons.cloud_upload),
      label: Text('Sign Up'),
    );
  }

  Future<void> registerThread() async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    await firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((response) {
      print('Register Success');
    }).catchError((response) {
      String title = response.code;
      String message = response.message;
      normalDialog(context, title, message);
    });
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
