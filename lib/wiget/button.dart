import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class button extends StatelessWidget {
  String text;
  String destination;
  button({super.key, required this.text, required this.destination});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, destination);
      },
      child: Container(
        width: 157.w,
        height: 57.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.w),
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
          text,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16.sp),
        )),
      ),
    );
  }
}
