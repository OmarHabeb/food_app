import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/wiget/button.dart';

class forget_password extends StatefulWidget {
  const forget_password({super.key});

  @override
  State<forget_password> createState() => _forget_passwordState();
}

class _forget_passwordState extends State<forget_password> {
  bool selected = false;
  bool selected2 = false;
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
                "Forgot password?",
                style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Select which contact details should we\nuse to reset your password",
                style: TextStyle(fontSize: 15.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    if (selected2 == true) {
                      selected2 = false;
                      selected = true;
                    } else {
                      selected ? selected = false : selected = true;
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(15.r),
                  width: MediaQuery.of(context).size.width,
                  height: 105.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.w)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage("assets/Message.png"),
                              fit: BoxFit.cover,
                            )),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Via sms:",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 16.sp),
                              ),
                              Text(
                                " •••• •••• 4235",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      selected
                          ? Container(
                              width: 25.w,
                              height: 25.h,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/true.png"),
                                      fit: BoxFit.cover)),
                            )
                          : Container()
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    if (selected == true) {
                      selected = false;
                      selected2 = true;
                    } else {
                      selected2 ? selected2 = false : selected2 = true;
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(15.r),
                  width: MediaQuery.of(context).size.width,
                  height: 105.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.w)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 40.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage("assets/Email.png"),
                              fit: BoxFit.cover,
                            )),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Via email::",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 16.sp),
                              ),
                              Text(
                                " •••• •••• @gmail.com",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      selected2
                          ? Container(
                              width: 25.w,
                              height: 25.h,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/true.png"),
                                      fit: BoxFit.cover)),
                            )
                          : Container()
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 250.h,
              ),
              Center(
                  child: button(text: "Next", destination: "verification_code"))
            ],
          ),
        ),
      ),
    );
  }
}
