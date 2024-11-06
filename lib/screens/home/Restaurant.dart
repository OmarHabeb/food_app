import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/screens/home/notification.dart';
import 'package:food_app/screens/home/search.dart';
import 'package:food_app/screens/navigator.dart';

class Restaurant extends StatefulWidget {
  const Restaurant({super.key});

  @override
  State<Restaurant> createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  List<String> images = [
    "assets/vegan.png",
    "assets/healthy.png",
    "assets/good food.png",
    "assets/smart.png",
    "assets/cook nature.png",
    "assets/company name.png",
  ];
  List<String> images_names = [
    "Vegan",
    "Healthy",
    "Good food",
    "Smart rest",
    "Cook nature",
    "Company name",
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
                                          builder: (context) =>
                                              notification()));
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Search()));
                                },
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(15.sp),
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
                        height: 15.h,
                      ),
                      Text(
                        "Popular Restaurant",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      GridView.builder(
                          physics: ScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: images.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 5,
                                  crossAxisSpacing: 5,
                                  childAspectRatio: 150 / 190),
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22.r),
                                  color: Colors.white),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 85.w,
                                    height: 80.h,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(images[index]),
                                            fit: BoxFit.cover)),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    images_names[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.sp),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Text(
                                    "12 Mins",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            );
                          })
                    ]))));
  }
}
