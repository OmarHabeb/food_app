import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/screens/stratest/onboarding2.dart';

class onboarding1 extends StatefulWidget {
  const onboarding1({super.key});

  @override
  State<onboarding1> createState() => _StartPageState();
}

class _StartPageState extends State<onboarding1> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3) ,(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => onboarding2() ));
    }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Pattern.png"), fit: BoxFit.cover)),
        child: Center(
          child: Container(
            width: 188.w,
            height: 203.h,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/Logo.png"))),
          ),
        ),
      ),
    ));
  }
}
