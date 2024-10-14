import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/wiget/button.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _singnupState();
}

class _singnupState extends State<signin> {
  bool index = false;
  bool index2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/Pattern.png"), fit: BoxFit.fill)),
        child: Container(
          padding: EdgeInsets.all(10.w),
          child: Column(
            children: [
              Container(
                width: 188.w,
                height: 203.h,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/Logo.png"))),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Login To Your Account",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Email",
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
                  hintText: "Password",
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
              Text(
                "Or Countinue with",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 152.w,
                    height: 57.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.w)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.facebook,
                          color: Colors.blue,
                          size: 25,
                        ),
                        Text(
                          "Facebook",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    width: 152.w,
                    height: 57.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.w)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/google-icon 1.png"),
                        Text(
                          "Google",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "forget_password");
                },
                child: Text(
                  "Forget your pasword?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.greenAccent),
                ),
              ),
              SizedBox(height: 20.h),
             button(text: "Login", destination: "")
            ],
          ),
        ),
      )),
    );
  }
}
