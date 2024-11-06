import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/data.dart';
import 'package:food_app/screens/home/food.dart';
import 'package:food_app/screens/home/search.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
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
                                onPressed: () {},
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
                        "Popular Menu",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          itemCount: menu.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onLongPress: () {
                                if (card_items.contains(menu[index])) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text(
                                        "this item  is already in your cart"),
                                    duration: Duration(seconds: 3),
                                  ));
                                } else {
                                  card_items.add(menu[index]);
                                }
                              },
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Food()));
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 64.w,
                                          height: 64.h,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.r),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      menu[index]["image"]),
                                                  fit: BoxFit.cover)),
                                        ),
                                        SizedBox(
                                          width: 15.w,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              menu[index]["text"],
                                              style: TextStyle(
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              menu[index]["subtext"],
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
                                      "\$ ${menu[index]["price"]}",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(254, 173, 29, 1)),
                                    )
                                  ],
                                ),
                              ),
                            );
                          })
                    ]))));
  }
}
