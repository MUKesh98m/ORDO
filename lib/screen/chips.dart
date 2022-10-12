// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:ui/screen/profile_screen.dart';
//
// import '../constant.dart';
// import '../textinputfield.dart';
// import 'money.dart';
// import 'new_password.dart';
//
// class chips extends StatefulWidget {
//   const chips({Key? key}) : super(key: key);
//
//   @override
//   State<chips> createState() => _chipsState();
// }
//
// class _chipsState extends State<chips> {
//   List menu = ['Barbeque Nations', 'Tung Fu', 'Fusion Fantasia'];
//   int selectedIndex = -1;
//
//   TextEditingController email = TextEditingController();
//   final formKey = GlobalKey<FormState>();
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
//       body: Column(
//         children: [
//           ListView.builder(
//               shrinkWrap: true,
//               scrollDirection: Axis.vertical,
//               itemCount: menu.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                   child: ListTile(
// // selected: selectedIndex == index ? true : false,
//
//                       title: Text(menu[index],
//                           style: TextStyle(color: Colors.black)),
//                       trailing: selectedIndex == index
//                           ? Icon(
//                               Icons.check,
//                               color: Colors.green,
//                               size: 30,
//                             )
//                           : null,
//                       onTap: () {
//                         setState(() {
//                           selectedIndex = index;
//                           // print(index);
//                         });
//                         passvalue();
//                       }),
//                 );
//               }),
//         ],
//       ),
//     );
//   }
//
//   passvalue() {
//     if (selectedIndex == 0) {
//       // return 100;
//
//       print("100");
//     } else if (selectedIndex == 1) {
//       print("200");
//       // return 200;
//     } else if (selectedIndex == 2) {
//       // return 300;
//       print("300");
//     } else {
//       // return "others";
//       print("others");
//     }
//   }
// }
