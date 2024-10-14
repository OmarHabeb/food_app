import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/wiget/button.dart';

class signup_process extends StatefulWidget {
  const signup_process({super.key});

  @override
  State<signup_process> createState() => _signup_processState();
}

class _signup_processState extends State<signup_process> {
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
                "Fill in your bio to get started",
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
              TextField(
                decoration: InputDecoration(
                  hintText: "Frist Name",
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  border: UnderlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Last Name",
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  border: UnderlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Mobile Number",
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    border: UnderlineInputBorder(borderSide: BorderSide.none)),
              ),
              SizedBox(
                height: 250.h,
              ),
              Center(
                child:  button(text: "Next", destination: "signup_process2")

              )
            ],
          ),
        ),
      ),
    );
  }
}
