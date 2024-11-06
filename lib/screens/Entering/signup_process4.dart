import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/wiget/button.dart';
import 'package:image_picker/image_picker.dart';

class signup_process4 extends StatefulWidget {
  XFile? image;

  signup_process4({required this.image});

  @override
  State<signup_process4> createState() => _signup_process4State();
}

class _signup_process4State extends State<signup_process4> {
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
                height: 40.h,
              ),
              Center(
                child: Stack(
                  children: [
                    widget.image == null
                        ? Text("no baby")
                        : Container(
                            width: 245.w,
                            height: 238.h,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.w),
                                image: DecorationImage(
                                    image: FileImage(File(widget.image!.path)),
                                    fit: BoxFit.cover)),
                          ),
                    Positioned(
                        right: 0,
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                widget.image = null;
                              });
                            },
                            icon: Icon(
                              Icons.close,
                              color: Colors.white,
                            )))
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
                  child: widget.image == null
                      ? TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Back",
                            style: TextStyle(
                                color: Colors.greenAccent, fontSize: 20),
                          ))
                      : button(text: "Next", destination: "signup_process5"))
            ],
          ),
        ),
      ),
    );
  }
}
