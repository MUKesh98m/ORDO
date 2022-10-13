import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ui/screen/profile_screen.dart';

import '../constant.dart';
import '../textinputfield.dart';
import 'money.dart';
import 'new_password.dart';

class chips extends StatefulWidget {
  const chips({Key? key}) : super(key: key);

  @override
  State<chips> createState() => _chipsState();
}

class _chipsState extends State<chips> {
  List menu = ['Barbeque Nations', 'Tung Fu', 'Fusion Fantasia'];
  int selectedIndex = -1;
  List money = ['€100', '€200', '€300', 'Other'];

  TextEditingController amount = TextEditingController();

  final formKey = GlobalKey<FormState>();

  int? defaultChoiceIndex = 0;

  @override
  void initState() {
    defaultChoiceIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 200.0, left: 20, right: 20),
        child: Column(
          children: [
            Wrap(
              spacing: 8,
              children: List.generate(money.length, (index) {
                return ChoiceChip(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  labelPadding:
                      EdgeInsets.only(left: 15.0, top: 3, bottom: 3, right: 15),
                  label: Text(
                    money[index],
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
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
                      defaultChoiceIndex = value ? index : defaultChoiceIndex;
                      passvalue();
                      if (index == money.length - 1) {
                        amount.text = '';
                      } else {
                        amount.text = money[index];
                      }
                    });
                  },
                );
              }),
            ),
            textinputfield(
              controllers: amount,
              onchanged: (value) {
                setState(() {
                  if (amount == money) {
                    defaultChoiceIndex;
                  }
                });
              },
              validator: validateEmail,
              keyboardtype: TextInputType.number,
              textcolor: Colors.black,
            ),
            TextButton(
                onPressed: () {
                  passvalue();
                },
                child: Text("Check Value")),
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
                          });
                          // passvalue();
                        }),
                  );
                }),
            ElevatedButton(
                onPressed: () {
                  // bottom();
                  if (amount == 100) {
                    // return 100;

                    print("100");
                  } else if (amount == 200) {
                    print("200");
                    // return 200;
                  } else if (amount == 300) {
                    // return 300;
                    print("300");
                  } else {
                    // return "others";
                    print("others");
                  }
                },
                child: Text("Open")),
            // Wrap(
            //   spacing: 8,
            //   children: List.generate(money.length, (index) {
            //     return InkWell(
            //       child: ChoiceChip(
            //         shape: RoundedRectangleBorder(
            //             borderRadius:
            //             BorderRadius.all(Radius.circular(8))),
            //         labelPadding: EdgeInsets.only(
            //             left: 15.0, top: 3, bottom: 3, right: 15),
            //         label: Text(
            //           money[index],
            //           style: Theme.of(context)
            //               .textTheme
            //               .bodyText2!
            //               .copyWith(
            //               color: defaultChoiceIndex == index
            //                   ? Colors.white
            //                   : Colors.green,
            //               fontSize: 14),
            //         ),
            //         selected: defaultChoiceIndex == index,
            //         disabledColor: Colors.red,
            //         side: BorderSide(
            //           color: defaultChoiceIndex == index
            //               ? Colors.white
            //               : Colors.green,
            //         ),
            //         selectedColor: HexColor("#07A279"),
            //         backgroundColor: Colors.transparent,
            //         onSelected: (value) {
            //           setState(() {
            //             defaultChoiceIndex =
            //             value ? index : defaultChoiceIndex;
            //             passvalue();
            //           });
            //         },
            //       ),
            //       onTap: () {
            //         if (index == money.length - 1) {
            //           amount.text = "";
            //         } else {
            //           amount.text = money[index];
            //         }
            //       },
            //     );
            //   }),
            // ),
          ],
        ),
      ),
    );
  }

  bottom() {
    return showModalBottomSheet<void>(
      isScrollControlled: true,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0)),
      ),
      builder: (BuildContext context) {
        return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
                child: Wrap(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter a search term'),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter a search term'),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter a search term'),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter a search term'),
                )
              ],
            )));
      },
    );
  }

  passvalue() {}
}

//
