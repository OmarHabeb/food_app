import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class update_password extends StatefulWidget {
  const update_password({super.key});

  @override
  State<update_password> createState() => _update_passwordState();
}

class _update_passwordState extends State<update_password> {
  bool index = true;
  bool index2 = true;
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
                obscureText: index,
                decoration: InputDecoration(
                  hintText: "New Password",
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          index == true ? index = false : index = true;
                        });
                      },
                      icon: Icon(
                        Icons.visibility,
                        color: index ? Colors.grey : Colors.greenAccent,
                      )),
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
                obscureText: index2,
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          index2 == true ? index2 = false : index2 = true;
                        });
                      },
                      icon: Icon(
                        Icons.visibility,
                        color: index2 ? Colors.grey : Colors.greenAccent,
                      )),
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
              SizedBox(
                height: 250.h,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      'reset_succesful',
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
