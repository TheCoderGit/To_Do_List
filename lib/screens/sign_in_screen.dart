import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sign_In_screen extends StatefulWidget {
  const Sign_In_screen({Key? key}) : super(key: key);

  @override
  _Sign_In_screenState createState() => _Sign_In_screenState();
}

class _Sign_In_screenState extends State<Sign_In_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Sign In Screen!')));
  }
}
