import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/screens/home/ChatDetails.dart';
import 'package:food_app/screens/navigator.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<String> profileimage = [
    "assets/Profile1.png",
    "assets/Profile2.png",
    "assets/Profile3.png",
  ];
  List<String> profilename = [
    "Anamwp",
    "Guy Hawkins",
    "Leslie Alexander",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:  SingleChildScrollView(
        child: Container(
            width: MediaQuery.of(context).size.width,
             height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(top: 50, right: 20, left: 20),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Pattern2.png"),
                    fit: BoxFit.cover)),
            child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, children: [
              InkWell(
                onTap: () {
                     Navigator.pop(context, MaterialPageRoute(builder: (context)=>navigator()));
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
                "Chat",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
              ),
              SizedBox(
                height: 10.h,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: profileimage.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatDetails(
                                      image: profileimage[index],
                                      name: profilename[index],
                                    )));
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 15),
                        padding: EdgeInsets.all(15.r),
                        height: 87.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(22.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 64.w,
                                  height: 64.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      image: DecorationImage(
                                          image:
                                              AssetImage(profileimage[index]),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      profilename[index],
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Your Order Just Arrived!",
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              "20:00",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    );
                  })
            ]))));
  }
}
