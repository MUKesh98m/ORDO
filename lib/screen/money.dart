import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../constant.dart';
import '../textinputfield.dart';
import 'new_password.dart';

class money extends StatefulWidget {
  const money({Key? key}) : super(key: key);

  @override
  State<money> createState() => _moneyState();
}

class _moneyState extends State<money> {
  List money = ['€100', '€200', '€300', 'Other'];
  TextEditingController email = TextEditingController();
  final formKey = GlobalKey<FormState>();

  int? defaultChoiceIndex;

  @override
  void initState() {
    defaultChoiceIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 8,
                  children: List.generate(money.length, (index) {
                    return ChoiceChip(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      labelPadding: EdgeInsets.only(
                          left: 15.0, top: 3, bottom: 3, right: 15),
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
                          defaultChoiceIndex =
                              value ? index : defaultChoiceIndex;
                          // passvalue();
                        });
                      },
                    );
                  }),
                )
              ],
            ),
            tabs()
          ],
        ),
      ),
    );
  }

  tabs() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          textcolor: Colors.black,
          text: defaultChoiceIndex == 0
              ? "Enter the amount"
              : passvalue().toString(),
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

  passvalue() {
    if (defaultChoiceIndex == 0) {
      return 100;
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
