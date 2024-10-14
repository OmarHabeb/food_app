import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/wiget/button.dart';

class onboarding3 extends StatefulWidget {
  const onboarding3({super.key});

  @override
  State<onboarding3> createState() => _onboarding2State();
}

class _onboarding2State extends State<onboarding3> {
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
                        image: AssetImage("assets/onboarding3.png"),
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
                      '''Food Ninja is Where Your
      Comfort Food Lives''',
                      style: TextStyle(
                          fontSize: 22.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      '''Enjoy a fast and smooth food delivery at 
                       your doorstep''',
                      style: TextStyle(fontSize: 18.sp),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                InkWell(
                onTap: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                      'signup',
                      (Route<dynamic> route) => false,
                    );
                },
                child: Container(
                  width: 157.w,
                  height: 57.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.w),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(83, 232, 139, 1), // Light green
                        Color.fromRGBO(21, 190, 119, 1), // Darker green
                      ],
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp),
                  )),
                ),
              )

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
