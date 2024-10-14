import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class reset_succesful extends StatefulWidget {
  const reset_succesful({super.key});

  @override
  State<reset_succesful> createState() => _reset_succesfulState();
}

class _reset_succesfulState extends State<reset_succesful> {
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
              "Password reset succesful",
              style: TextStyle(fontSize: 23.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 200.h,
            ),
            Center(
              child: InkWell(
                onTap: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                      'signin',
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
                    "Back",
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
    ));
  }
}
