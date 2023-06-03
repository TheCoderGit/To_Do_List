import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/constants.dart';
import 'package:to_do_list/screens/sign_in_screen.dart';

import '../widgets/round_button.dart';

class Welcome_Screen extends StatefulWidget {
  const Welcome_Screen({Key? key}) : super(key: key);

  @override
  _Welcome_ScreenState createState() => _Welcome_ScreenState();
}

class _Welcome_ScreenState extends State<Welcome_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFEDDBC3),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0)),
              ),
              child: Center(child: Image.asset('images/ToDo_List.png')),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: Colors.grey.shade300),
            height: 8.0,
            width: 24.0,
          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.all(20.0),
              //padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'WELCOME',
                      style: TextStyle(
                          color: kTextColor,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'Just a click away from \n planning your tasks',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 17,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ),
          Round_button(
            text: 'Get Started!',
            background_color: kStartColor,
            color_text: Colors.white,
            onPress: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Sign_In_screen();
              }));
            },
          ),
        ],
      ),
    );
  }
}
