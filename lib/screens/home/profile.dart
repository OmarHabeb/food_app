import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/data.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<Map> rate = [
    {
      "image": "assets/Pasta.png",
      "name": "Spacy fresh crab",
      "des": "Waroenk kita",
      "price": "\$ 35",
    },
    {
      "image": "assets/soup.png",
      "name": "Spacy fresh crab",
      "des": "Waroenk kita",
      "price": "\$ 35",
    },
    {
      "image": "assets/icecream.png",
      "name": "Spacy fresh crab",
      "des": "Waroenk kita",
      "price": "\$ 35",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: image == null
                      ? AssetImage("assets/me.jpg")
                      : AssetImage(
                          image.toString(),
                        ),
                  fit: BoxFit.cover)),
          child: DraggableScrollableSheet(
            builder: (context, ScrollController scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 234, 249, 255),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(25.0)),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 76.w,
                        height: 34.h,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 229, 196),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                            child: Text(
                          "Popular",
                          style: TextStyle(color: Colors.orange),
                        )),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Anam Wusono",
                                  style: TextStyle(
                                      fontSize: 27.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "anamwp66@gmail.com",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            Icon(
                              Icons.edit,
                              color: Colors.greenAccent,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(22.r)),
                        height: 64.h,
                        child: Row(
                          children: [
                            Container(
                              width: 46.w,
                              height: 43.h,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/Voucher Icon.png"),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              "You Have 3 Voucher",
                              style: TextStyle(fontSize: 15.sp),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "Favorite",
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.bold),
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.all(15),
                            width: MediaQuery.of(context).size.width,
                            height: 103.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22.r),
                                color: Colors.white),
                            child: Row(
                              children: [
                                Container(
                                  width: 64.w,
                                  height: 64.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.r),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              rate[index]["image"].toString()),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 240.w,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                rate[index]["name"].toString(),
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15),
                                              ),
                                              Text(
                                                rate[index]["des"].toString(),
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            width: 85.w,
                                            height: 29.h,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(17.5.r),
                                              gradient: LinearGradient(
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                                colors: [
                                                  Color.fromRGBO(83, 232, 139,
                                                      1), // Light green
                                                  Color.fromRGBO(21, 190, 119,
                                                      1), // Darker green
                                                ],
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "Buy Again",
                                                style:
                                                    TextStyle(fontSize: 12.sp),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      rate[index]["price"].toString(),
                                      style: TextStyle(),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                        itemCount: rate.length,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 15.h,
                          );
                        },
                      )
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}
