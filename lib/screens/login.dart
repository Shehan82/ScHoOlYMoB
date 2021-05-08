import 'package:flutter/material.dart';
import 'package:schoolymob/configuration.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Container(
            height: 300,
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/school.png'))),
          ),
        ],
      ),
    );
  }
}
