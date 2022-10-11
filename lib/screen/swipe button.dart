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
      appBar: AppBar(
        title: Text(
          'Tab bar',
        ),
      ),
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
// ListView.builder(
// shrinkWrap: true,
// scrollDirection: Axis.vertical,
// itemCount: menu.length,
// itemBuilder: (context, index) {
// return Container(
// child: ListTile(
// // selected: selectedIndex == index ? true : false,
//
// title: Text(menu[index],
// style: TextStyle(color: Colors.black)),
// trailing: selectedIndex == index
// ? Icon(
// Icons.check,
// color: Colors.green,
// size: 30,
// )
//     : Text("data"),
// onTap: () {
// setState(() {
// selectedIndex = index;
// });
// showModalBottomSheet(
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.vertical(
// top: Radius.circular(15),
// ),
// ),
// clipBehavior: Clip.antiAliasWithSaveLayer,
// context: context,
// builder: (context) {
// return Container(
// child: Padding(
// padding: EdgeInsets.only(
// left: 20, top: 20, right: 20),
// child: SingleChildScrollView(
// child: Column(
// crossAxisAlignment:
// CrossAxisAlignment.start,
// children: [
// Text(
// "Starting Balance",
// style: TextStyle(
// fontWeight: FontWeight.w700,
// fontSize: 24,
// fontFamily:
// 'SF Pro Display',
// ),
// ),
// Text(
// "Lorem ipsum dolor sit amet, consectetur \nviverra vestibulum sodales.",
// style: TextStyle(
// fontWeight:
// FontWeight.w400,
// height: 1.5,
// fontSize: 16,
// fontFamily:
// 'SF Pro Display',
// color:
// HexColor("#99A2AB")),
// ),
// SizedBox(
// height: 15,
// ),
// Row(
// mainAxisAlignment:
// MainAxisAlignment.start,
// children: [
// Wrap(
// spacing: 8,
// children: List.generate(
// money.length,
// (index) {
// return ChoiceChip(
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius
//     .all(Radius
//     .circular(
// 8))),
// labelPadding:
// EdgeInsets.only(
// left: 15.0,
// top: 3,
// bottom: 3,
// right: 15),
// label: Text(
// money[index],
// style: Theme.of(
// context)
//     .textTheme
//     .bodyText2!
//     .copyWith(
// color: defaultChoiceIndex ==
// index
// ? Colors
//     .white
//     : Colors
//     .green,
// fontSize:
// 14),
// ),
// selected:
// defaultChoiceIndex ==
// index,
// side: BorderSide(
// color:
// defaultChoiceIndex ==
// index
// ? Colors
//     .white
//     : Colors
//     .green,
// ),
// selectedColor:
// HexColor(
// "#07A279"),
// backgroundColor:
// Colors
//     .transparent,
// onSelected: (value) {
// setState(() {
// defaultChoiceIndex =
// value
// ? index
//     : defaultChoiceIndex;
// passvalue();
// });
// },
// );
// }),
// )
// ],
// ),
// Column(
// mainAxisAlignment:
// MainAxisAlignment.start,
// crossAxisAlignment:
// CrossAxisAlignment.start,
// children: [
// Text(
// "Type your own amount",
// style: TextStyle(
// fontWeight:
// FontWeight.w600,
// height: 1.5,
// fontSize: 16,
// color:
// HexColor("#001921"),
// fontFamily:
// 'SF Pro Display',
// ),
// ),
// SizedBox(
// height: 20,
// ),
// textinputfield(
// controllers: email,
// validator: validateEmail,
// text: defaultChoiceIndex ==
// 0
// ? "Enter the amount"
//     : passvalue()
//     .toString(),
// ),
// SizedBox(
// height: 20,
// ),
// Container(
// width:
// MediaQuery.of(context)
//     .size
//     .width,
// height: 48,
// decoration: BoxDecoration(
// borderRadius:
// BorderRadius
//     .circular(
// 10)),
// child: ElevatedButton(
// style: ButtonStyle(
// backgroundColor:
// MaterialStatePropertyAll(
// HexColor(
// '#07A279'))),
// onPressed: () {
// Navigator.push(
// context,
// MaterialPageRoute(
// builder:
// (context) =>
// new_password()));
// },
// child: Text(
// "Start Shift Now     >")),
// ),
// ],
// )
// ],
// ),
// )),
// );
// },
// );
// },
// ),
// );
// })