import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:schoolymob/configuration.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isTeacher = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: primaryColor,
      body: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
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
          Container(
            height: MediaQuery.of(context).size.height / 5.5,
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 20,
                bottom: MediaQuery.of(context).size.height / 35,
                left: 70,
                right: 70),
            decoration: BoxDecoration(
                // color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(40),
                // shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/images/school2.png'))),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, right: 30, left: 30),
            width: 320,
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
                          print(MediaQuery.of(context).size.height);
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
                Container(
                  margin: EdgeInsets.only(top: 40, right: 20, left: 20),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(20)),
                  width: 340,
                  height: 45,
                  child: TextField(
                    style: GoogleFonts.raleway(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.mail_outline,
                          color: Colors.grey,
                        ),
                        contentPadding: EdgeInsets.only(top: 8),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        // errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Email',
                        hintStyle: GoogleFonts.itim(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, right: 20, left: 20),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(20)),
                  width: 340,
                  height: 45,
                  child: TextField(
                    style: GoogleFonts.raleway(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Colors.grey,
                        ),
                        contentPadding: EdgeInsets.only(top: 8),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        // errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: GoogleFonts.itim(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                Container(
                  height: 50,
                  width: 250,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xff35b5ad),
                      borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.only(top: 30, bottom: 10),
                  child: isTeacher
                      ? Text("Login as a teacher",
                          style: GoogleFonts.itim(
                              fontSize: 18, fontWeight: FontWeight.w800))
                      : Text("Login as a student",
                          style: GoogleFonts.itim(
                              fontSize: 18, fontWeight: FontWeight.w800)),
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
            height: MediaQuery.of(context).size.height / 20,
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
                InkWell(
                  onTap: () {
                    print("bksfnsj");
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
          )
        ],
      ),
    );
  }
}
