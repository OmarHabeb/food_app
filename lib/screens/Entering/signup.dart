import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/wiget/button.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _singnupState();
}
// fuck

class _singnupState extends State<signup> {
  bool index = false;
  bool index2 = false;
  bool show_pass = true;
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
                height: 20.h,
              ),
              Text(
                "Sign Up For Free",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Anamep...",
                  prefixIcon: Image(image: AssetImage("assets/Profile.png")),
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
                  hintText: "E-mail",
                  prefixIcon: Image(image: AssetImage("assets/Message1.png")),
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
                obscureText: show_pass,
                decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Image(image: AssetImage("assets/Lock.png")),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          show_pass == true ? show_pass=false:show_pass=true;
                        });
                      },
                      icon: Icon(
                        Icons.visibility,
                        color: show_pass?Colors.grey: Colors.greenAccent,
                      )),
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
                height: 20.h,
              ),
              Row(
                children: [
                  Container(
                    width: 22.w,
                    height: 22.h,
                    child: Checkbox(
                      side: BorderSide(color: Colors.greenAccent),
                      shape: CircleBorder(),
                      fillColor: MaterialStatePropertyAll(Colors.greenAccent),
                      value: index,
                      onChanged: (value) {
                        setState(() {
                          index = value!;
                        });
                      },
                    ),
                  ),
                  Text(
                    "Keep Me Signed In",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Container(
                    width: 22.w,
                    height: 22.h,
                    child: Checkbox(
                      side: BorderSide(color: Colors.greenAccent),
                      shape: CircleBorder(),
                      fillColor: MaterialStatePropertyAll(Colors.greenAccent),
                      value: index2,
                      onChanged: (value) {
                        setState(() {
                          index2 = value!;
                        });
                      },
                    ),
                  ),
                  Text(
                    "Email Me About Special Pricing",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              button(text: "Create Account", destination: "signup_process"),
              SizedBox(
                height: 10.h,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'signin');
                  },
                  child: Text(
                    "already have an account?",
                    style:
                        TextStyle(color: Colors.greenAccent, fontSize: 12.sp),
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
