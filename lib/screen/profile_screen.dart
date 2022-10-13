import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:ui/constant.dart';
import 'package:ui/screen/new_password.dart';
import 'package:ui/screen/swipe%20button.dart';

import '../textinputfield.dart';
import 'chips.dart';
import 'money.dart';

class profile_screen extends StatefulWidget {
  const profile_screen({Key? key, this.username}) : super(key: key);
  final username;

  @override
  State<profile_screen> createState() => _profile_screenState();
}

class _profile_screenState extends State<profile_screen> {
  List menu = ['Barbeque Nations', 'Tung Fu', 'Fusion Fantasia'];
  int selectedIndex = -1;
  String? username;
  List money = ['€100', '€200', '€300', 'Other'];
  TextEditingController amount = TextEditingController();
  final formKey = GlobalKey<FormState>();

  int? defaultChoiceIndex;

  @override
  void initState() {
    amount.clear();
    defaultChoiceIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
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
              InkWell(
                onTap: () {
                  bottomsheet();
                },
                child: Container(
                  width: 220,
                  height: 50,
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
                      Text(
                          selectedIndex == -1
                              ? "Barbecue Nation"
                              : passvalue1().toString(),
                          style: GoogleFonts.alike(
                            fontSize: 16,
                            color: HexColor("#57616A"),
                          )),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
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
                    bottomsheet1();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  bottomsheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      isDismissible: true,
      backgroundColor: Colors.white,
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
              padding: EdgeInsets.only(
                left: 20,
                top: 20,
                right: 20,
              ),
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
                    // Container(height: 200, child: chips())
                    ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: menu.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: ListTile(
// selected: selectedIndex == index ? true : false,

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
                                    // print(index);
                                  });

                                  if (passvalue1() != null) {
                                    Navigator.pop(context);
                                  } else {
                                    print("Please select the value");
                                  }
                                }),
                          );
                        }),
                  ],
                ),
              )),
        );
      },
    );
  }

  passvalue1() {
    if (selectedIndex == 0) {
      // Navigator.pop(context);

      return "Barbeque Nations";

      // print("100");
    } else if (selectedIndex == 1) {
      // Navigator.pop(context);

      // print("200");
      return "Tung Fu";
    } else {
      // Navigator.pop(context);

      return "Fusion Fantasia";

      // print("others");

    }
  }

  bottomsheet1() {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder:
              (BuildContext context, void Function(void Function()) setState) {
            return Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 20,
                    right: 20,
                  ),
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
                        height: 10,
                      ),
                      // Container(height: 210, child: money()),
                      Wrap(
                        spacing: 8,
                        children: List.generate(money.length, (index) {
                          return ChoiceChip(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            labelPadding: EdgeInsets.only(
                                left: 15.0, top: 3, bottom: 3, right: 15),
                            label: Text(
                              money[index],
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      color: defaultChoiceIndex == index
                                          ? Colors.white
                                          : Colors.green,
                                      fontSize: 14),
                            ),
                            selected: defaultChoiceIndex == index,
                            disabledColor: Colors.red,
                            side: BorderSide(
                              color: defaultChoiceIndex == index
                                  ? Colors.white
                                  : Colors.green,
                            ),
                            selectedColor: HexColor("#07A279"),
                            backgroundColor: Colors.transparent,
                            onSelected: (value) {
                              setState(() {
                                defaultChoiceIndex =
                                    value ? index : defaultChoiceIndex;
                                passvalue();
                                if (index == money.length) {
                                  amount.text = ' ';
                                } else {
                                  amount.text = money[index];
                                }
                              });
                            },
                          );
                        }),
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
                      TextFormField(
                        controller: amount,
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 10, left: 25),
                          hintText: "Enter Amount",
                          hintStyle: TextStyle(color: HexColor("#99A2AB")),
                          filled: true,
                          fillColor: Color.fromRGBO(255, 255, 255, 0.1),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          prefixIconColor: Colors.white,
                        ),
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
                            onPressed: () {},
                            child: Text("Start Shift Now     >")),
                      ),
                    ],
                  ),
                ));
          },
        );
      },
    );
  }

  passvalue() {
    if (defaultChoiceIndex == 0) {
      return amount.text;
      // print("100");
    } else if (defaultChoiceIndex == 1) {
      // print("200");
      return 200;
    } else if (defaultChoiceIndex == 2) {
      return 300;
      // print("300");
    } else {
      return "others";
      // print("others");
    }
  }
}
