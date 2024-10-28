import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  List<String> image = [
    "assets/success.png",
    "assets/dollar.png",
    "assets/close.png",
  ];
  List<String> title = [
    "Your order has been taken\nby the driver",
    "Topup for \$100 was successful",
    "Your order has been canceled",
  ];
    List<String> subtitle = [
    "Recently",
    "10.00 Am",
    "22 Juny 2021",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 50, right: 20, left: 20),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/Pattern2.png"),
                        fit: BoxFit.cover)),
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
                        "Chat",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: title.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(bottom: 15),
                              padding: EdgeInsets.all(15.r),
                              height: 100.h,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(22.r)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 40.w,
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        image: DecorationImage(
                                            image:
                                                AssetImage(image[index]),
                                            fit: BoxFit.cover)),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        title[index],
                                        style: TextStyle(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        subtitle[index],
                                        style: TextStyle(
                                            fontSize: 15.sp,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          })
                    ]))));
  }
}
