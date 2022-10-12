import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:toast/toast.dart';
import 'package:ui/constant.dart';
import 'package:ui/screen/profile_screen.dart';
import 'package:ui/textinputfield.dart';

import '../button.dart';
import 'forgot_page.dart';

class sign_in extends StatefulWidget {
  const sign_in({Key? key}) : super(key: key);

  @override
  State<sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  bool isChecked = false;
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  bool? texterror;
  final formKey = GlobalKey<FormState>();
  @override
  void initState() {
    email.clear();
    pass.clear();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      // backgroundColor: HexColor("#001921"),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 101, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/ORDO@2x.png",
                  height: 29,
                  width: 120,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "WAITER",
                  style: GoogleFonts.alike(
                      letterSpacing: 5,
                      fontSize: 15,
                      color: Color.fromRGBO(255, 255, 255, 0.5)),
                ),
                SizedBox(
                  height: 80,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign In",
                      style: TextStyle(
                          fontSize: 34,
                          color: HexColor("#FFFFFF"),
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Arcu vitae elementum proin sed.",
                      style: TextStyle(
                        fontSize: 16,
                        color: HexColor("#99A2AB"),
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    textinputfield(
                        icon: Icons.person,
                        text: "Email Address",
                        controllers: email,
                        textcolor: textcolor,
                        validator: validateEmail),
                    SizedBox(
                      height: 20,
                    ),
                    textinputfield(
                        text: "Password",
                        isObscure: true,
                        icon: Icons.lock_outline,
                        controllers: pass,
                        textcolor: textcolor,
                        validator: validatePassword),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 0.1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3))),
                              child: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor:
                                      Color.fromRGBO(255, 255, 255, 0.1),
                                ),
                                child: Checkbox(
                                  //shape: RoundedRectangleBorder(side: BorderSide.none),
                                  side: BorderSide.none,
                                  checkColor: Colors.white,
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Remember Me",
                              style: TextStyle(
                                fontSize: 14,
                                color: HexColor("#99A2AB"),
                                fontFamily: 'SF Pro Display',
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => forgot_page()));
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              fontSize: 14,
                              color: HexColor("#99A2AB"),
                              fontFamily: 'SF Pro Display',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  HexColor('#07A279'))),
                          onPressed: () {
                            finalvalidation();
                          },
                          child: Text("Login")),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not registered?',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(255, 255, 255, 0.6)),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Click Here',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.greenAccent),
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

  finalvalidation() {
    if (formKey.currentState!.validate()) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => profile_screen()));
    }
  }
}
