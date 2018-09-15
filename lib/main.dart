import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login_Page",
      home: new LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new FlutterLogo(
              size: 100.0,
            ),
            new Form(
              child: new Column(
                children: <Widget>[
                  new TextFormField(
                    decoration: new InputDecoration(hintText: "Enter Email_id"),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  new TextFormField(
                    decoration: new InputDecoration(hintText: "Enter password"),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
