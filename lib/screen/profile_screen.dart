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
                // LiteRollingSwitch(
                //   value: false,
                //   width: 300,
                //   textOffColor: Colors.white,
                //   textOn: '           Close Shift',
                //   textSize: 22,
                //   textOff: 'Start Shift            ',
                //   colorOn: Colors.red,
                //   colorOff: Colors.green,
                //   iconOn: Icons.keyboard_arrow_left,
                //   iconOff: Icons.keyboard_arrow_right,
                //   animationDuration: const Duration(milliseconds: 300),
                //   onChanged: (bool state) {
                //     print('turned ${(state) ? 'on' : 'off'}');
                //   },
                //   onDoubleTap: () {},
                //   onSwipe: () {
                //     bottomsheet();
                //   },
                //   onTap: () {},
                // ),

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
          height: 350,
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
                    SizedBox(
                      height: 20,
                    ),

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Container(
                    //       height: 35,
                    //       width: 72,
                    //       alignment: Alignment.center,
                    //       decoration: BoxDecoration(
                    //           color: HexColor("#07A279"),
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(8))),
                    //       child: Text(
                    //         "€100",
                    //         style: TextStyle(
                    //           color: HexColor("#ffffff"),
                    //         ),
                    //       ),
                    //     ),
                    //     Container(
                    //       height: 35,
                    //       width: 72,
                    //       alignment: Alignment.center,
                    //       decoration: BoxDecoration(
                    //           border: Border.all(
                    //               color: HexColor("#07A279"), width: 1),
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(8))),
                    //       child: Text(
                    //         "€200",
                    //         style: TextStyle(
                    //           color: HexColor("#07A279"),
                    //         ),
                    //       ),
                    //     ),
                    //     Container(
                    //       height: 35,
                    //       width: 72,
                    //       alignment: Alignment.center,
                    //       decoration: BoxDecoration(
                    //           border: Border.all(
                    //             width: 1,
                    //             color: HexColor("#07A279"),
                    //           ),
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(8))),
                    //       child: Text(
                    //         "€300",
                    //         style: TextStyle(
                    //           color: HexColor("#07A279"),
                    //         ),
                    //       ),
                    //     ),
                    //     Container(
                    //       height: 35,
                    //       width: 72,
                    //       alignment: Alignment.center,
                    //       decoration: BoxDecoration(
                    //           border: Border.all(
                    //             width: 1,
                    //             color: HexColor("#07A279"),
                    //           ),
                    //           borderRadius:
                    //               BorderRadius.all(Radius.circular(8))),
                    //       child: Text(
                    //         "Other",
                    //         style: TextStyle(
                    //           color: HexColor("#07A279"),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),

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
                      width: 385,
                      height: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  HexColor('#07A279'))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => new_password()));
                          },
                          child: Text("Start Shift Now     >")),
                    ),
                  ],
                ),
              )),
        );
      },
    );
  }

  tabs() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          // give the tab bar a height [can change hheight to preferred height]
          Container(
            height: 45,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(
                25.0,
              ),
            ),
            child: TabBar(
              controller: _tabController,
              // give the indicator a decoration (color and border radius)
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
                color: Colors.green,
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              tabs: [
                // first tab [you can add an icon using the icon property]
                Tab(
                  text: 'Place Bid',
                ),

                // second tab [you can add an icon using the icon property]
                Tab(
                  text: 'Buy Now',
                ),
              ],
            ),
          ),
          // tab bar view here
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // first tab bar view widget
                new_password(),

                // second tab bar view widget
                Center(
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
