import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/wiget/button.dart';

class signup_process2 extends StatefulWidget {
  const signup_process2({super.key});

  @override
  State<signup_process2> createState() => _signup_processState();
}

class _signup_processState extends State<signup_process2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(15.w),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Pattern2.png"), fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 45.w,
                  height: 45.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Icon Back.png"))),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Payment Method",
                style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "This data will be displayed in your account\nprofile for security",
                style: TextStyle(fontSize: 15.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              InkWell(
                child: Container(
                  width: 335.w,
                  height: 73.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.w)),
                  child: Image.asset("assets/paypal.png"),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              InkWell(
                child: Container(
                    width: 335.w,
                    height: 73.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.w)),
                    child: Center(
                      child: Image.asset("assets/visa.png"),
                    )),
              ),
              SizedBox(
                height: 15.h,
              ),
              InkWell(
                child: Container(
                    width: 335.w,
                    height: 73.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.w)),
                    child: Center(
                      child: Image.asset("assets/Payoneer.png"),
                    )),
              ),
              SizedBox(
                height: 250.h,
              ),
              Center(
                child:  button(text: "Next", destination: "signup_process3")
              )
            ],
          ),
        ),
      ),
    );
  }
}
