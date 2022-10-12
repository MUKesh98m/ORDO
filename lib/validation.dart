import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ui/constant.dart';
import 'package:ui/screen/new_password.dart';
import 'package:ui/screen/profile_screen.dart';
import 'package:ui/screen/sign_in.dart';
import 'package:ui/textinputfield.dart';

import 'button.dart';

class validation extends StatefulWidget {
  const validation({Key? key}) : super(key: key);

  @override
  State<validation> createState() => _validationState();
}

class _validationState extends State<validation> {
  TextEditingController pass = TextEditingController();
  TextEditingController conf_pass = TextEditingController();
  bool? texterror;
  final formKey = GlobalKey<FormState>();
  @override
  void initState() {
    pass.clear();
    conf_pass.clear();
    super.initState();
  }

  finalvalidation() {
    if (formKey.currentState!.validate()) {
      if (pass.text == conf_pass.text) {
        print("object");
      } else {
        validateConfPassword;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 39, right: 39),
            child: Form(
              key: formKey,
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
                                "Create \nNew Password",
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
                            "Your new password must be diffrent \nfrom previous used passwords.",
                            style: TextStyle(
                                height: 1.4,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: HexColor("#99A2AB")),
                          )
                        ],
                      )),
                  textinputfield(
                      text: "Password",
                      controllers: pass,
                      textcolor: Colors.white,

                      suffixicon: Icons.remove_red_eye_rounded,
                      suffixiconcolor: Colors.white,
                      validator: (val) {
                        if (val.isEmpty) {
                          return 'Please enter password';
                        } else {
                          if (!regex.hasMatch(val)) {
                            return 'Enter valid password ex ABc98@98';
                          } else {
                            return null;
                          }
                        }
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  textinputfield(
                    controllers: conf_pass,
                    text: "Confirm Password",
                    suffixicon: Icons.remove_red_eye_rounded,
                    suffixiconcolor: Colors.white,
                    validator: (val) {
                      if (val.isEmpty) {
                        return 'Please enter confirm password';
                      } else {
                        if (!regex.hasMatch(val)) {
                          return 'Enter valid password ex ABc98@98';
                        } else {
                          null;
                        }
                      }
                      if (val != pass.text) {
                        return "password is not same";
                      }
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => profile_screen()));
                    },
                  ),
                  SizedBox(
                    height: 40,
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
                          // if (pass.text.length < 8) {
                          //   print("Enter Password ");
                          // } else if (conf_pass.text.length < 8) {
                          //   print("Conform Password  ");
                          // } else if (pass.text != conf_pass.text) {
                          //   print("Password is not same");
                          // } else {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => sign_in()));
                          // }
                          // if (formKey.currentState!.validate()) {
                          //   print("hii");
                          // }
                          finalvalidation();
                        },
                        child: Text("Login")),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
