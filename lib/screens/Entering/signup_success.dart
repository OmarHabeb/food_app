import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/wiget/button.dart';

class signup_success extends StatefulWidget {
  const signup_success({super.key});

  @override
  State<signup_success> createState() => _signup_successState();
}

class _signup_successState extends State<signup_success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Pattern.png"), fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(
              height: 100.h,
            ),
            Container(
              width: 188.w,
              height: 203.h,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/success.png"))),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Congrats!",
              style: TextStyle(
                  fontSize: 23.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Your Profile Is Ready To Use",
              style: TextStyle(fontSize: 23.sp, fontWeight: FontWeight.bold),
            ) ,
            SizedBox(
              height: 200.h,
            ),
               Center(
                child: button(text: "Try Order", destination: "")
              )
          ],
        ),
      ),
    ));
  }
}
