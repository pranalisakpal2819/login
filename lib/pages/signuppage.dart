import 'package:flutter/material.dart';

import 'package:flutter_app/pages/LoginPage.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Page"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            "assets/back.jpeg",
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.3),
            colorBlendMode: BlendMode.darken,
          ),
          Center(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                  child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset("assets/register.jpeg"),
                      TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: "Enter Name", labelText: "Name"),
                      ),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Enter Email Address",
                          labelText: "Email Address",
                        ),
                      ),
                      TextField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Create Strong Password",
                          labelText: "Password",
                        ),
                      ),
                      Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(
                            onPressed: () {
                              /* Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));*/
                              return showDialog(
                                  context: context,
                                  builder: (ctx) => AlertDialog(
                                        title: Text("Alert.....!"),
                                        content: Text("Do you want to exit"),
                                        actions: <Widget>[
                                          FlatButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          LoginPage()));
                                            },
                                            child: Text("Yes"),
                                          ),
                                          FlatButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            SignUp()));
                                              },
                                              child: Text("No"))
                                        ],
                                      ));
                            },
                            child: Text("Back"),
                            color: Colors.black12,
                          ),
                          SizedBox(width: 5),
                          RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                            child: Text("Register"),
                            color: Colors.black12,
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
              )),
            ),
          ))
        ],
      ),
    );
  }
}
