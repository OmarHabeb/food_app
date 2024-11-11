import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:food_app/screens/home/menu.dart';

class Detailproduct extends StatefulWidget {
  const Detailproduct({super.key});

  @override
  State<Detailproduct> createState() => _DetailproductState();
}

class _DetailproductState extends State<Detailproduct> {
  List<Map> rate = [
    {
      "image": "assets/Profile1.png",
      "name": "Anamwp",
      "date": "12 April 2021",
      "des":
          "This Is great, So delicious! You Must\nHere, With Your family . . ",
    },
    {
      "image": "assets/Profile2.png",
      "name": "Guy Hawkins",
      "date": "12 April 2021",
      "des":
          "This Is great, So delicious! You Must\nHere, With Your family . . ",
    },
    {
      "image": "assets/Profile3.png",
      "name": "Leslie Alexander",
      "date": "12 April 2021",
      "des":
          "This Is great, So delicious! You Must\nHere, With Your family . . ",
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
                image: AssetImage(
                  'assets/background.png',
                ),
                fit: BoxFit.cover)),
        child: DraggableScrollableSheet(builder: (context, scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 76.w,
                        height: 34.h,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(83, 232, 139, 1),
                              Color.fromRGBO(21, 190, 119, 1)
                            ])),
                        child: Center(
                            child: Text(
                          "Popular",
                          style: TextStyle(color: Colors.green),
                        )),
                      ),
                      Spacer(),
                      Container(
                        width: 34.w,
                        height: 34.h,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(colors: [
                              Color.fromRGBO(83, 232, 139, 1),
                              Color.fromRGBO(21, 190, 119, 1)
                            ])),
                        child: Center(
                            child: Icon(
                          Icons.location_on,
                          color: Colors.green,
                        )),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 34.w,
                          height: 34.h,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(255, 29, 29, 1),
                                Color.fromRGBO(255, 0, 0, 1)
                              ])),
                          child: Center(
                              child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Wijie Bar and Resto",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.green,
                      ),
                      Text(
                        "19 Km",
                        style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                      ),
                      SizedBox(width: 15.w),
                      Icon(
                        Icons.star,
                        color: Colors.green,
                      ),
                      Text(
                        "4.5 Rating",
                        style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Text(
                      "Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . ."),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Menu',
                        style: TextStyle(
                          fontSize: 23.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          elevation: 0,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Menu(),
                            ),
                          );
                        },
                        child: Text(
                          "View More",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 124, 50, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    height: 171.h,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 171.h,
                            width: 147.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22.r),
                                color: Colors.white),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 71.h,
                                    width: 71.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/vegan.png"),
                                            fit: BoxFit.cover)),
                                  ),
                                  Text(
                                    "Healthy Food",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.sp),
                                  ),
                                  Text(
                                    "8 Mins",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.sp,
                                        color: Colors.grey),
                                  )
                                ]),
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                              width: 10,
                            ),
                        itemCount: 4),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "Testimonials",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width,
                        height: 128.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22.r),
                            color: Color.fromARGB(255, 216, 242, 253)),
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
                                            rate[index]["date"].toString(),
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 53.w,
                                        height: 33.h,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(18.5.r),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/Icon Star.png"),
                                                fit: BoxFit.cover)),
                                      )
                                    ],
                                  ),
                                ),
                                Text(
                                  rate[index]["des"].toString(),
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
        }),
      ),
    );
  }
}
