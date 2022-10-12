import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ui/screen/new_password.dart';
import 'package:ui/screen/sign_in.dart';

import '../button.dart';
import '../constant.dart';
import '../textinputfield.dart';
import 'forgot_page.dart';

class verification_code extends StatefulWidget {
  const verification_code({Key? key}) : super(key: key);

  @override
  State<verification_code> createState() => _verification_codeState();
}

class _verification_codeState extends State<verification_code> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 36,
                  height: 36,
                  child: IconButton(
                      padding: EdgeInsets.only(bottom: 1),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                      )),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0.1),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    width: 300,
                    height: 180,
                    // color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 300,
                            // color: Colors.greenAccent,
                            child: Text(
                              "Enter the verification code",
                              style: TextStyle(
                                  fontSize: 34,
                                  color: HexColor("#FFFFFF"),
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 0.7),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Please enter the 6 digit code sent to \n your email address",
                          style: TextStyle(
                              height: 1.4,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: HexColor("#99A2AB")),
                        )
                      ],
                    )),
                textinputfield(
                  text: "Email Address",
                  maxlength: 6,
                  textcolor: textcolor,
                ),
                Container(
                  width: 385,
                  height: 48,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(HexColor('#07A279'))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => new_password()));
                      },
                      child: Text("Continue")),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Didn’t recieve any code?",
                      style: TextStyle(
                        fontSize: 14,
                        color: HexColor("#99A2AB"),
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => forgot_page()));
                      },
                      child: Text(
                        "Resend",
                        style: TextStyle(
                          fontSize: 14,
                          color: HexColor("#FFFFFF"),
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
