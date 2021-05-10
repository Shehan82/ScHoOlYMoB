import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolymob/screens/login.dart';

import '../configuration.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  bool isTeacher = false;
  TextEditingController emailTEC = new TextEditingController();
  TextEditingController passwordTEC = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: primaryColor,
      body: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "ScHoOlYMoB",
              style: GoogleFonts.itim(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(vertical: 20),
            // color: Colors.amber,
            child: Text(
              "SignUp",
              style: GoogleFonts.itim(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
          // Container(
          //   height: 150,
          //   margin: EdgeInsets.only(top: 30, bottom: 20, left: 70, right: 70),
          //   decoration: BoxDecoration(
          //       // color: Colors.black.withOpacity(0.3),
          //       borderRadius: BorderRadius.circular(40),
          //       // shape: BoxShape.circle,
          //       image: DecorationImage(
          //           fit: BoxFit.contain,
          //           image: AssetImage('assets/images/school2.png'))),
          // ),
          Container(
            margin: EdgeInsets.only(top: 10, right: 30, left: 30),
            width: 340,
            decoration: BoxDecoration(
                color: Colors.white70.withOpacity(0.2),
                borderRadius: BorderRadius.circular(30)),
            child: Column(
              children: [
                Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isTeacher = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: isTeacher
                                ? primaryColor
                                : Colors.black.withOpacity(0),
                          ),
                          alignment: Alignment.center,
                          height: 50,
                          width: 160,
                          child: Text(
                            "Students",
                            style: GoogleFonts.itim(
                                fontSize: 20,
                                color: isTeacher
                                    ? Colors.white.withOpacity(0.4)
                                    : Colors.white),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isTeacher = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: isTeacher
                                ? Colors.black.withOpacity(0)
                                : primaryColor,
                          ),
                          alignment: Alignment.center,
                          // color: Colors.red,
                          height: 50,
                          width: 160,
                          child: Text("Teachers",
                              style: GoogleFonts.itim(
                                  fontSize: 20,
                                  color: isTeacher
                                      ? Colors.white
                                      : Colors.white.withOpacity(0.4))),
                        ),
                      )
                    ],
                  ),
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40, right: 20, left: 20),
                        width: 320,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: TextFormField(
                          validator: (val) {
                            return RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(val)
                                ? null
                                : "please enter the valid email";
                          },
                          controller: emailTEC,
                          style: GoogleFonts.itim(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.black.withOpacity(0.4),
                              prefixIcon: Icon(
                                Icons.mail_outline,
                                color: Colors.grey,
                              ),
                              contentPadding: EdgeInsets.only(
                                  left: 2, top: 2, bottom: 2, right: 20),
                              // isDense: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              // focusedBorder: InputBorder.none,
                              // enabledBorder: InputBorder.none,
                              // // errorBorder: InputBorder.none,
                              // disabledBorder: InputBorder.none,
                              hintText: 'User Name',
                              hintStyle: GoogleFonts.itim(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, right: 20, left: 20),
                        width: 320,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: TextFormField(
                          validator: (val) {
                            return RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(val)
                                ? null
                                : "please enter the valid email";
                          },
                          controller: emailTEC,
                          style: GoogleFonts.itim(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.black.withOpacity(0.4),
                              prefixIcon: Icon(
                                Icons.mail_outline,
                                color: Colors.grey,
                              ),
                              contentPadding: EdgeInsets.only(
                                  left: 2, top: 2, bottom: 2, right: 20),
                              // isDense: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              // focusedBorder: InputBorder.none,
                              // enabledBorder: InputBorder.none,
                              // // errorBorder: InputBorder.none,
                              // disabledBorder: InputBorder.none,
                              hintText: 'Email',
                              hintStyle: GoogleFonts.itim(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 10,
                          right: 20,
                          left: 20,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        width: 320,
                        height: 70,
                        child: TextFormField(
                          validator: (val) {
                            return val.length > 6
                                ? null
                                : "Please provide passowrd greater than 6";
                          },
                          controller: passwordTEC,
                          style: GoogleFonts.itim(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.black.withOpacity(0.4),
                              prefixIcon: Icon(
                                Icons.mail_outline,
                                color: Colors.grey,
                              ),
                              contentPadding: EdgeInsets.only(
                                  left: 2, top: 2, bottom: 2, right: 20),
                              // isDense: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              hintText: 'Password',
                              hintStyle: GoogleFonts.itim(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (formKey.currentState.validate()) {
                      // signMeIn();
                    }
                  },
                  child: Container(
                    height: 50,
                    width: 250,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xff35b5ad),
                        borderRadius: BorderRadius.circular(30)),
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    child: isTeacher
                        ? Text("Login as a teacher",
                            style: GoogleFonts.itim(
                                fontSize: 18, fontWeight: FontWeight.w800))
                        : Text("Login as a student",
                            style: GoogleFonts.itim(
                                fontSize: 18, fontWeight: FontWeight.w800)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Forgot password",
                    style: GoogleFonts.itim(
                        color: Color(0xff35b5ad),
                        fontSize: 16,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: GoogleFonts.itim(
                      color: Colors.white.withOpacity(0.4), fontSize: 17),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Container(
                    child: Text(
                      "Register now",
                      style: GoogleFonts.itim(
                          color: Color(0xff35b5ad),
                          fontSize: 19,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
        ],
      ),
    );
  }
}
