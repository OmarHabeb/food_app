import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/wiget/button.dart';

class signup_process5 extends StatefulWidget {
  const signup_process5({super.key});

  @override
  State<signup_process5> createState() => _signup_process5State();
}

class _signup_process5State extends State<signup_process5> {
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
                "Set Your Location ",
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
                height: 40.h,
              ),
              Container(
                padding: EdgeInsets.all(15.w),
                width: 342.w,
                height: 147.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.w),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/Pin Logo.png"),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "Your Location",
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    InkWell(
                      child: Container(
                        width: double.infinity,
                        height: 57.h,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 241, 241, 241),
                            borderRadius: BorderRadius.circular(15.w)),
                        child: Center(
                          child: Text(
                            "Set Location",
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                height: 250.h,
              ),
              Center(
                child: button(text: "Next", destination: "signup_success")
              )
            ],
          ),
        ),
      ),
    );
  }
}
