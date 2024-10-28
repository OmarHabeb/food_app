import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/screens/home/Rate%20food.dart';

class Finishorder extends StatefulWidget {
  String image;
  Finishorder({required this.image});

  @override
  State<Finishorder> createState() => _FinishorderState();
}

class _FinishorderState extends State<Finishorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(15.r),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/Pattern.png',
                  ),
                  fit: BoxFit.cover)),
          child: Column(children: [
            SizedBox(height: 200.h),
            Container(
              width: 161.w,
              height: 161.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(160),
                  border: Border.all(color: Colors.green, width: 5),
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.cover)),
            ),
            SizedBox(height: 30),
            Text(
              "Thank You!\nOrder Completed",
              style: TextStyle(
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15.h),
            Text(
              "Please rate your last Driver",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.h),
            Container(
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/stars.png"))),
            ),
            SizedBox(height: 50.h),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.edit_document,
                    color: Colors.greenAccent,
                  ),
                  hintText: "Leave feedback",
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      borderSide: BorderSide(color: Colors.grey)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      borderSide: BorderSide(color: Colors.grey)),
                  border: UnderlineInputBorder(borderSide: BorderSide.none)),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Container(
                  width: 233.w,
                  height: 57.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
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
                      "Submit",
                      style: TextStyle(color: Colors.white, fontSize: 14.sp),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Rate_food()));
                  },
                  child: Container(
                    width: 82.w,
                    height: 57.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: Colors.white),
                    child: Center(
                      child: Text(
                        "Skip",
                        style: TextStyle(
                            color: Colors.greenAccent, fontSize: 14.sp),
                      ),
                    ),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
