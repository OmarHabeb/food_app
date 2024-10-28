import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/screens/home/Finishorder.dart';

class Call extends StatefulWidget {
  String name;
  String image;
  Call({required this.name, required this.image});

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  bool isRinging = false;
  bool onMute = false;
  Timer? timer;
  int seconds = 0;
  int minutes = 0;
  int hours = 0;
  @override
  void initState() {
    startCallTimer();
    Future.delayed(Duration(seconds: 5), () {
      isRinging = true;
    });
    super.initState();
  }

  void startCallTimer() {
    Future.delayed(Duration(seconds: 5), () {
      timer = Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          seconds++;
          if (seconds == 60) {
            seconds = 0;
            minutes++;
          }
          if (minutes == 60) {
            minutes = 0;
            hours++;
          }
        });
      });
    });
  }

  @override
  void dispose() {
     timer?.cancel();  
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String formattedTime = hours.toString().padLeft(2, '0') +
        ':' +
        minutes.toString().padLeft(2, '0') +
        ':' +
        seconds.toString().padLeft(2, '0');
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/Pattern.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 200.h,
            child: Container(
              padding: EdgeInsets.all(10.w),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: 161.w,
                      height: 161.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(160),
                          border: Border.all(color: Colors.green ,width: 5 ),
                          image: DecorationImage(
                              image: AssetImage(widget.image),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(height: 30),
                    Text(
                      widget.name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    isRinging == false
                        ? Text(
                            "Ringing...",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : Text(
                            "$formattedTime",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                    SizedBox(height: 170),
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              onMute = !onMute;
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.greenAccent),
                              child: Center(
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      image: DecorationImage(
                                          image: onMute == false
                                              ? AssetImage("assets/unmute.png")
                                              : AssetImage("assets/mute.png"),
                                          fit: BoxFit.contain)),
                                ),
                              ),
                            )),
                        SizedBox(width: 30),
                        InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Finishorder(image: widget.image,),));
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.redAccent),
                              child: Center(child: Icon(Icons.close,color: Colors.white,)),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
