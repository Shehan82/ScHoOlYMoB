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
      backgroundColor: primaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Container(
            height: 150,
            margin: EdgeInsets.only(top: 20, bottom: 20, left: 70, right: 70),
            decoration: BoxDecoration(
                // color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(40),
                // shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/images/school2.png'))),
          ),
          Container(
            child: Text(
              "ScHoOlYMoB",
              style: GoogleFonts.itim(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            width: 340,
            color: Colors.black.withOpacity(0.2),
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
                          width: 170,
                          child: Text(
                            "Students",
                            style: GoogleFonts.itim(
                                fontSize: 20, color: Colors.white),
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
                          width: 170,
                          child: Text("Teachers",
                              style: GoogleFonts.itim(
                                  fontSize: 20, color: Colors.white)),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40, right: 20, left: 20),
                  decoration: BoxDecoration(
                      color: secondayrColor,
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
                          Icons.search,
                          color: Colors.grey,
                        ),
                        suffixIcon: Icon(
                          Icons.settings,
                          color: Colors.grey,
                        ),
                        contentPadding: EdgeInsets.only(top: 12),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        // errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Search pet to adopt',
                        hintStyle: GoogleFonts.raleway(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, right: 20, left: 20),
                  decoration: BoxDecoration(
                      color: secondayrColor,
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
                          Icons.search,
                          color: Colors.grey,
                        ),
                        suffixIcon: Icon(
                          Icons.settings,
                          color: Colors.grey,
                        ),
                        contentPadding: EdgeInsets.only(top: 12),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        // errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Search pet to adopt',
                        hintStyle: GoogleFonts.raleway(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                  ),
                ),
                Container(
                  height: 40,
                  width: 250,
                  alignment: Alignment.center,
                  color: Colors.green,
                  margin: EdgeInsets.only(top: 30, bottom: 30),
                  child: Text("Login"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
