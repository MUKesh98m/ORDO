import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:ui/constant.dart';
import 'package:ui/screen/new_password.dart';

import '../textinputfield.dart';

class profile_screen extends StatefulWidget {
  const profile_screen({Key? key}) : super(key: key);

  @override
  State<profile_screen> createState() => _profile_screenState();
}

class _profile_screenState extends State<profile_screen> {
  List menu = ['Barbeque Nations', 'Tung Fu', 'Fusion Fantasia'];
  int selectedIndex = -1;
  List money = ['€100', '€200', '€300', 'Other'];
  TextEditingController email = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isFinished = false;
  TabController? _tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 0.1),
                          borderRadius: BorderRadius.all(Radius.circular(3))),
                      height: 40,
                      width: 40,
                      child: IconButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.person,
                            color: HexColor("#57616A"),
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 0.1),
                          borderRadius: BorderRadius.all(Radius.circular(3))),
                      height: 40,
                      width: 40,
                      child: IconButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.notifications,
                            color: HexColor("#57616A"),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                CircleAvatar(
                  backgroundColor: HexColor("#E5E5E5"),
                  radius: 60,
                  child: Image.asset('assets/Ellipse .png'),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Hi, Kristi ",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'SF Pro Display',
                    fontSize: 34,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 220,
                  decoration: BoxDecoration(
                      color: HexColor("#E5E5E5"),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/Ellipse1.png",
                        height: 29,
                        width: 29,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text("Barbecue Nation",
                          style: GoogleFonts.alike(
                            fontSize: 16,
                            color: HexColor("#57616A"),
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.keyboard_arrow_down,
                            color: HexColor("#57616A"),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Table Assignment",
                        style: GoogleFonts.alike(
                          fontSize: 16,
                          color: HexColor("#57616A"),
                        )),
                    Icon(Icons.keyboard_arrow_right, color: HexColor("#57616A"))
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 65,
                  decoration: BoxDecoration(
                      color: HexColor("#E7F6F2"),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: SwipeButton(
                    activeThumbColor: Colors.green,
                    activeTrackColor: HexColor("#E7F6F2"),
                    child: Text(
                      "Start Shift",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 22,
                          fontWeight: FontWeight.w400),
                    ),
                    onSwipe: () {
                      bottomsheet();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  bottomsheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      isDismissible: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      context: context,
      builder: (context) {
        return Container(
          width: 100,
          child: Padding(
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Select Restaurant or Bar",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur \nviverra vestibulum sodales.",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          color: HexColor("#99A2AB")),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: menu.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: ListTile(
                              selected: selectedIndex == index ? true : false,
                              selectedTileColor:
                                  selectedIndex == index ? null : null,
                              title: Text(menu[index],
                                  style: TextStyle(color: Colors.black)),
                              trailing: selectedIndex == index
                                  ? Icon(
                                      Icons.check,
                                      color: Colors.green,
                                      size: 30,
                                    )
                                  : null,
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                                secondsheet();
                              },
                            ),
                          );
                        })
                  ],
                ),
              )),
        );
      },
    );
  }

  secondsheet() {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      context: context,
      builder: (context) {
        return Container(
          child: Padding(
              padding: EdgeInsets.only(left: 20, top: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Starting Balance",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur \nviverra vestibulum sodales.",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          color: HexColor("#99A2AB")),
                    ),
                    tabs(),
                  ],
                ),
              )),
        );
      },
    );
  }

  tabs() {
    return DefaultTabController(
      length: 4,
      child: Container(
        // color: Colors.red,
        height: 248,
        child: Column(
          children: [
            TabBar(
              indicator: ShapeDecoration(
                color: HexColor("#07A279"),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
              labelColor: Colors.white,
              unselectedLabelColor: HexColor("#07A279"),
              controller: _tabController,
              tabs: [
                Container(
                  height: 35,
                  width: 300,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: HexColor("#07A279"),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Tab(
                    text: "€100",
                  ),
                ),
                Container(
                  height: 35,
                  width: 152,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: HexColor("#07A279"),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Tab(
                    text: "€200",
                  ),
                ),
                Container(
                  height: 35,
                  width: 200,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: HexColor("#07A279"),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Tab(
                    text: "€300",
                  ),
                ),
                Container(
                  height: 35,
                  width: 152,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: HexColor("#07A279"),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Tab(
                    text: "Other",
                  ),
                ),
              ],
            ),
            Container(
              height: 200,
              child: TabBarView(
                controller: _tabController,
                children: [
                  // first tab bar view widget

                  // second tab bar view widget

                  tabs1(),
                  tabs1(),
                  tabs1(),
                  tabs1(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  tabs1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          "Type your own amount",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            height: 1.5,
            fontSize: 16,
            color: HexColor("#001921"),
            fontFamily: 'SF Pro Display',
          ),
        ),
        SizedBox(
          height: 20,
        ),
        textinputfield(
          controllers: email,
          validator: validateEmail,
          text: "Enter the amount",
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 48,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(HexColor('#07A279'))),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new_password()));
              },
              child: Text("Start Shift Now     >")),
        ),
      ],
    );
  }
}
