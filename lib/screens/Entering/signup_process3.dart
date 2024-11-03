import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/screens/Entering/signup_process4.dart';

import 'package:image_picker/image_picker.dart';

class signup_process3 extends StatefulWidget {
  const signup_process3({super.key});

  @override
  State<signup_process3> createState() => _signup_process3State();
}

class _signup_process3State extends State<signup_process3> {
   XFile? image;
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
                onTap: () async {
                  image = (await ImagePicker()
                      .pickImage(source: ImageSource.gallery))!;
                },
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
                onTap: () async {
                  image =
                      (await ImagePicker().pickImage(source: ImageSource.camera));
                },
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
                      child: TextButton(
                    onPressed: () {
                      image == null
                          ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Please choose your pic"),
                              duration: Duration(seconds: 3),
                            ))
                          : Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => signup_process4(
                                        image: image!,
                                      )));
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp),
                    ),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
