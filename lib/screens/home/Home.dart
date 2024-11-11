import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/screens/home/Detailproduct.dart';
import 'package:food_app/screens/home/Restaurant.dart';
import 'package:food_app/screens/home/menu.dart';
import 'package:food_app/screens/home/notification.dart';
import 'package:food_app/screens/home/search.dart';
import 'package:food_app/screens/navigator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Find Your\nFavorite Food",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 31.sp),
                        ),
                        Container(
                          width: 45.w,
                          height: 45.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => notification()));
                              },
                              icon: Icon(
                                Icons.notifications_none_outlined,
                                color: Colors.greenAccent,
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 6,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "search");
                              },
                              child: Container(
                                padding: EdgeInsets.all(10),
                                height: 50.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.sp),
                                    color: Color(0XFFF9A84D)),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.search,
                                      color: Color.fromRGBO(218, 99, 23, 1),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      "What do you want to order?",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(218, 99, 23, 1)),
                                    )
                                  ],
                                ),
                              ),
                            )),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Container(
                            height: 50.h,
                            width: 50.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color.fromRGBO(249, 168, 77, 1)),
                            child: Icon(Icons.filter_list_sharp),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                        padding: EdgeInsets.only(right: 30),
                        width: MediaQuery.of(context).size.width,
                        height: 150.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          image: DecorationImage(
                              image: AssetImage("assets/ice.png")),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(83, 232, 139, 1), // Light green
                              Color.fromRGBO(21, 190, 119, 1), // Darker green
                            ],
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Special Deal For\nOctober",
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Container(
                                width: 82.w,
                                height: 32.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: Colors.white),
                                child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Buy Now",
                                      style: TextStyle(
                                          color: Colors.greenAccent,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10.sp),
                                    )),
                              )
                            ],
                          ),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nearest Restaurant",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.sp),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Restaurant()));
                            },
                            child: Text(
                              "View More ",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color.fromRGBO(218, 99, 23, 1)),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Detailproduct()));
                          },
                          child: Container(
                            height: 184.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22.r),
                                color: Colors.white),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 73.h,
                                    width: 96.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                AssetImage("assets/vegan.png"),
                                            fit: BoxFit.cover)),
                                  ),
                                  Text(
                                    "Vegan Resto",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.sp),
                                  ),
                                  Text(
                                    "12 Mins",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.sp,
                                        color: Colors.grey),
                                  )
                                ]),
                          ),
                        )),
                        SizedBox(
                          width: 15.w,
                        ),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Detailproduct()));
                          },
                          child: Container(
                            height: 184.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22.r),
                                color: Colors.white),
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 73.h,
                                    width: 96.w,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/healthy.png"),
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
                          ),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Menu",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.sp),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Menu()));
                            },
                            child: Text(
                              "View More ",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color.fromRGBO(218, 99, 23, 1)),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Container(
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
                                        image: AssetImage(
                                            "assets/Green noddle.png"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Text(
                                "Green Noddle",
                                style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Text(
                            "\$15",
                            style: TextStyle(
                                color: Color.fromRGBO(254, 173, 29, 1)),
                          )
                        ],
                      ),
                    )
                  ],
                ))));
  }
}
