import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:page_transition/page_transition.dart';
import 'package:ui/screen/forgot_page.dart';
import 'package:ui/screen/new_password.dart';
import 'package:ui/screen/profile_screen.dart';
import 'package:ui/screen/sign_in.dart';
import 'package:ui/screen/verification_code.dart';
import 'package:ui/validation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        scaffoldBackgroundColor: HexColor("#001921"),
      ),
      home: AnimatedSplashScreen(
          duration: 3000,
          splash: Center(
            child: Column(children: [
              Image.asset(
                "assets/ORDO@2x.png",
                height: 43,
                width: 200,
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
            ]),
          ),
          nextScreen: profile_screen(),
          backgroundColor: HexColor("#001921")),
    );
  }
}
