//import 'dart:async';

import 'dart:core';


import 'package:flutter/material.dart';

import 'package:flutter_app/pages/HomePage.dart';
import 'package:flutter_app/pages/table_demoPage.dart';

import 'signuppage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();

  // ignore: unused_field
  final _usernamecontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

 /*// String email = "pranalisakpal@gmail.com";
 // String password = "pranali123";

  Future checklogin() async {
    // ignore: unrelated_type_equality_checks
    if (_usernamecontroller.text == email && _passwordcontroller == password) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            "assets/comp.jpeg",
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.3),
            colorBlendMode: BlendMode.darken,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: formkey,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  hintText: "Enter Email Address",
                                  labelText: "Username"),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              controller: _passwordcontroller,
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Enter Password",
                                  labelText: "Password"),
                            ),
                            Center(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: RaisedButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomePage()));
                                        },
                                        child: Text("Log In"),
                                        color: Colors.black12,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: FlatButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SignUp()));
                                        },
                                        child: Text("Sign Up"),
                                        //  color: Colors.black12,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    FlatButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    TableDemo()));
                                      },
                                      child: Text("Setting"),
                                      //color: Colors.black12,
                                    )
                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FlatButton(
                                onPressed: () {},
                                child: Text("Forgot Password",
                                    style: TextStyle(color: Colors.black)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
