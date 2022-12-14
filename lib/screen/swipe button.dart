import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'new_password.dart';

class StackOver extends StatefulWidget {
  @override
  _StackOverState createState() => _StackOverState();
}

class _StackOverState extends State<StackOver>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int? defaultChoiceIndex;
  List<String> _choicesList = ['All', 'Pending', 'Accepted'];

  @override
  void initState() {
    defaultChoiceIndex = 0;
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            spacing: 8,
            children: List.generate(_choicesList.length, (index) {
              return ChoiceChip(
                labelPadding: EdgeInsets.all(2.0),
                label: Text(
                  _choicesList[index],
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white, fontSize: 14),
                ),
                selected: defaultChoiceIndex == index,
                selectedColor: Colors.deepPurple,
                onSelected: (value) {
                  setState(() {
                    defaultChoiceIndex = value ? index : defaultChoiceIndex;
                  });
                },
                // backgroundColor: color,
                elevation: 1,
              );
            }),
          )),
    );
  }
}

//
// class profile_screen extends StatefulWidget {
//   const profile_screen({Key? key}) : super(key: key);
//
//   @override
//   State<profile_screen> createState() => _profile_screenState();
// }
//
// class _profile_screenState extends State<profile_screen> {
//   List menu = ['Barbeque Nations', 'Tung Fu', 'Fusion Fantasia'];
//   int selectedIndex = -1;
//   List money = ['???100', '???200', '???300', 'Other'];
//   TextEditingController email = TextEditingController();
//   final formKey = GlobalKey<FormState>();
//   var inputtextvalue = false;
//
//   int? defaultChoiceIndex;
//
//   @override
//   void initState() {
//     defaultChoiceIndex = 0;
//     super.initState();
//   }
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
//                 Container(
//                   width: 220,
//                   decoration: BoxDecoration(
//                       color: HexColor("#E5E5E5"),
//                       borderRadius: BorderRadius.all(Radius.circular(50))),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Image.asset(
//                         "assets/Ellipse1.png",
//                         height: 29,
//                         width: 29,
//                       ),
//                       SizedBox(
//                         width: 2,
//                       ),
//                       Text("Barbecue Nation",
//                           style: GoogleFonts.alike(
//                             fontSize: 16,
//                             color: HexColor("#57616A"),
//                           )),
//                       IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.keyboard_arrow_down,
//                             color: HexColor("#57616A"),
//                           ))
//                     ],
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
//                       bottomsheet();
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
//                     ListView.builder(
//                         shrinkWrap: true,
//                         scrollDirection: Axis.vertical,
//                         itemCount: menu.length,
//                         itemBuilder: (context, index) {
//                           return Container(
//                             child: ListTile(
//                               // selected: selectedIndex == index ? true : false,
//
//                               title: Text(menu[index],
//                                   style: TextStyle(color: Colors.black)),
//                               trailing: selectedIndex == index
//                                   ? Icon(
//                                 Icons.check,
//                                 color: Colors.green,
//                                 size: 30,
//                               )
//                                   : Text("data"),
//                               onTap: () {
//                                 setState(() {
//                                   selectedIndex = index;
//                                 });
//                                 secondsheet();
//                               },
//                             ),
//                           );
//                         })
//                   ],
//                 ),
//               )),
//         );
//       },
//     );
//   }
//
//   secondsheet() {
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
//                       height: 15,
//                     ),
//                     tabs(),
//                     tabs1()
//                   ],
//                 ),
//               )),
//         );
//       },
//     );
//   }
//
//   tabs() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Wrap(
//           spacing: 8,
//           children: List.generate(money.length, (index) {
//             return ChoiceChip(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(8))),
//               labelPadding:
//               EdgeInsets.only(left: 15.0, top: 3, bottom: 3, right: 15),
//               label: Text(
//                 money[index],
//                 style: Theme.of(context).textTheme.bodyText2!.copyWith(
//                     color: defaultChoiceIndex == index
//                         ? Colors.white
//                         : Colors.green,
//                     fontSize: 14),
//               ),
//               selected: defaultChoiceIndex == index,
//               disabledColor: Colors.red,
//               side: BorderSide(
//                 color:
//                 defaultChoiceIndex == index ? Colors.white : Colors.green,
//               ),
//               selectedColor: HexColor("#07A279"),
//               backgroundColor: Colors.transparent,
//               onSelected: (value) {
//                 setState(() {
//                   defaultChoiceIndex = value ? index : defaultChoiceIndex;
//                   passvalue();
//                 });
//               },
//             );
//           }),
//         )
//       ],
//     );
//   }

// tabs1() {
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.start,
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text(
//         "Type your own amount",
//         style: TextStyle(
//           fontWeight: FontWeight.w600,
//           height: 1.5,
//           fontSize: 16,
//           color: HexColor("#001921"),
//           fontFamily: 'SF Pro Display',
//         ),
//       ),
//       SizedBox(
//         height: 20,
//       ),
//       textinputfield(
//         controllers: email,
//         validator: validateEmail,
//         text: defaultChoiceIndex == 0
//             ? "Enter the amount"
//             : passvalue().toString(),
//       ),
//       SizedBox(
//         height: 20,
//       ),
//       Container(
//         width: MediaQuery.of(context).size.width,
//         height: 48,
//         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
//         child: ElevatedButton(
//             style: ButtonStyle(
//                 backgroundColor:
//                 MaterialStatePropertyAll(HexColor('#07A279'))),
//             onPressed: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => new_password()));
//             },
//             child: Text("Start Shift Now     >")),
//       ),
//     ],
//   );
// }
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
