import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/wiget/button.dart';

class onboarding2 extends StatefulWidget {
  const onboarding2({super.key});

  @override
  State<onboarding2> createState() => _onboarding2State();
}

class _onboarding2State extends State<onboarding2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(10.w),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/onboarding2.png"),
                        fit: BoxFit.cover)),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '''Find your Comfort
      Food here''',
                      style: TextStyle(
                          fontSize: 22.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      '''Here You Can find a chef or dish for every 
                taste and color. Enjoy!''',
                      style: TextStyle(fontSize: 18.sp),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    button(text: "Next", destination: "onboarding3")



            
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
