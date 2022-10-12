// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_swipe_button/flutter_swipe_button.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:hexcolor/hexcolor.dart';
//
// import 'chips.dart';
// import 'money.dart';
//
// class profile extends StatefulWidget {
//   profile({Key? key, this.username}) : super(key: key);
//
//   final username;
//
//   @override
//   State<profile> createState() => _profileState();
// }
//
// class _profileState extends State<profile> {
//   List menu = ['Barbeque Nations', 'Tung Fu', 'Fusion Fantasia'];
//
//   int selectedIndex = -1;
//
//   TextEditingController email = TextEditingController();
//
//   final formKey = GlobalKey<FormState>();
//
//   int? defaultChoiceIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.only(left: 30, right: 30),
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 30,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                           color: Color.fromRGBO(255, 255, 255, 0.1),
//                           borderRadius: BorderRadius.all(Radius.circular(3))),
//                       height: 40,
//                       width: 40,
//                       child: IconButton(
//                           splashColor: Colors.transparent,
//                           highlightColor: Colors.transparent,
//                           onPressed: () {
//                             Navigator.pop(context);
//                           },
//                           icon: Icon(
//                             Icons.person,
//                             color: HexColor("#57616A"),
//                           )),
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                           color: Color.fromRGBO(255, 255, 255, 0.1),
//                           borderRadius: BorderRadius.all(Radius.circular(3))),
//                       height: 40,
//                       width: 40,
//                       child: IconButton(
//                           splashColor: Colors.transparent,
//                           highlightColor: Colors.transparent,
//                           onPressed: () {
//                             Navigator.pop(context);
//                           },
//                           icon: Icon(
//                             Icons.notifications,
//                             color: HexColor("#57616A"),
//                           )),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 100,
//                 ),
//                 CircleAvatar(
//                   backgroundColor: HexColor("#E5E5E5"),
//                   radius: 60,
//                   child: Image.asset('assets/Ellipse .png'),
//                 ),
//                 SizedBox(
//                   height: 40,
//                 ),
//                 Text(
//                   "Hi, Kristi ",
//                   style: TextStyle(
//                     fontWeight: FontWeight.w700,
//                     fontFamily: 'SF Pro Display',
//                     fontSize: 34,
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 InkWell(
//                   onTap: () {
//                     bottomsheet();
//                   },
//                   child: Container(
//                     width: 220,
//                     height: 50,
//                     decoration: BoxDecoration(
//                         color: HexColor("#E5E5E5"),
//                         borderRadius: BorderRadius.all(Radius.circular(50))),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           "assets/Ellipse1.png",
//                           height: 29,
//                           width: 29,
//                         ),
//                         SizedBox(
//                           width: 2,
//                         ),
//                         Text(
//                             widget.username == null
//                                 ? "Barbecue Nation"
//                                 : widget.username.toString(),
//                             style: GoogleFonts.alike(
//                               fontSize: 16,
//                               color: HexColor("#57616A"),
//                             )),
//                         Icon(Icons.keyboard_arrow_down)
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 100,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text("Table Assignment",
//                         style: GoogleFonts.alike(
//                           fontSize: 16,
//                           color: HexColor("#57616A"),
//                         )),
//                     Icon(Icons.keyboard_arrow_right, color: HexColor("#57616A"))
//                   ],
//                 ),
//                 SizedBox(
//                   height: 50,
//                 ),
//                 Container(
//                   alignment: Alignment.center,
//                   height: 65,
//                   decoration: BoxDecoration(
//                       color: HexColor("#E7F6F2"),
//                       borderRadius: BorderRadius.all(Radius.circular(50))),
//                   padding: EdgeInsets.only(left: 10, right: 10),
//                   child: SwipeButton(
//                     activeThumbColor: Colors.green,
//                     activeTrackColor: HexColor("#E7F6F2"),
//                     child: Text(
//                       "Start Shift",
//                       style: TextStyle(
//                           color: Colors.green,
//                           fontSize: 22,
//                           fontWeight: FontWeight.w400),
//                     ),
//                     onSwipe: () {
//                       bottomsheet1();
//                     },
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   bottomsheet() {
//     showModalBottomSheet(
//       isScrollControlled: true,
//       isDismissible: true,
//       backgroundColor: Colors.white,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(
//           top: Radius.circular(15),
//         ),
//       ),
//       clipBehavior: Clip.antiAliasWithSaveLayer,
//       context: context,
//       builder: (context) {
//         return Container(
//           width: 100,
//           child: Padding(
//               padding: EdgeInsets.only(left: 20, top: 20, right: 20),
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Select Restaurant or Bar",
//                       style: TextStyle(
//                         fontWeight: FontWeight.w700,
//                         fontSize: 24,
//                         fontFamily: 'SF Pro Display',
//                       ),
//                     ),
//                     Text(
//                       "Lorem ipsum dolor sit amet, consectetur \nviverra vestibulum sodales.",
//                       style: TextStyle(
//                           fontWeight: FontWeight.w400,
//                           height: 1.5,
//                           fontSize: 16,
//                           fontFamily: 'SF Pro Display',
//                           color: HexColor("#99A2AB")),
//                     ),
//                     Container(height: 200, child: chips())
//                   ],
//                 ),
//               )),
//         );
//       },
//     );
//   }
//
//   bottomsheet1() {
//     showModalBottomSheet(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(
//           top: Radius.circular(15),
//         ),
//       ),
//       clipBehavior: Clip.antiAliasWithSaveLayer,
//       context: context,
//       builder: (context) {
//         return Container(
//           child: Padding(
//               padding: EdgeInsets.only(left: 20, top: 20, right: 20),
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Starting Balance",
//                       style: TextStyle(
//                         fontWeight: FontWeight.w700,
//                         fontSize: 24,
//                         fontFamily: 'SF Pro Display',
//                       ),
//                     ),
//                     Text(
//                       "Lorem ipsum dolor sit amet, consectetur \nviverra vestibulum sodales.",
//                       style: TextStyle(
//                           fontWeight: FontWeight.w400,
//                           height: 1.5,
//                           fontSize: 16,
//                           fontFamily: 'SF Pro Display',
//                           color: HexColor("#99A2AB")),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Container(height: 210, child: money())
//
//                     // tabs1()
//                   ],
//                 ),
//               )),
//         );
//       },
//     );
//   }
//
//   passvalue() {
//     if (defaultChoiceIndex == 0) {
//       return 100;
//       // print("100");
//     } else if (defaultChoiceIndex == 1) {
//       // print("200");
//       return 200;
//     } else if (defaultChoiceIndex == 2) {
//       return 300;
//       // print("300");
//     } else {
//       return "others";
//       // print("others");
//     }
//   }
// }
