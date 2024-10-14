import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/wiget/button.dart';

class signup_process3 extends StatefulWidget {
  const signup_process3({super.key});

  @override
  State<signup_process3> createState() => _signup_process3State();
}

class _signup_process3State extends State<signup_process3> {
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
                "Upload Your Photo Profile",
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
                  width: 325.w,
                  height: 129.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.w)),
                  child: Image.asset("assets/Gallery.png"),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              InkWell(
                child: Container(
                    width: 325.w,
                    height: 129.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.w)),
                    child: Center(
                      child: Image.asset("assets/Camera.png"),
                    )),
              ),
              SizedBox(
                height: 250.h,
              ),
              Center(
                child: button(text: "Next", destination: "signup_process4")
              )
            ],
          ),
        ),
      ),
    );
  }
}
