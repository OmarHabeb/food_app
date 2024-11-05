import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/data.dart';
import 'package:food_app/main.dart';
import 'package:food_app/screens/home/payment.dart';
import 'package:food_app/screens/navigator.dart';

class card extends StatefulWidget {
  const card({super.key});

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  int num1 = 0;
  int num2 = 0;
  int num3 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(10.r),
          margin: EdgeInsets.only(right: 15, left: 15),
          height: 206.h,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/order_pic.png"), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(16.r),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(83, 232, 139, 1), // Light green
                Color.fromRGBO(21, 190, 119, 1), // Darker green
              ],
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(15.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sub-Total",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text("Delivery Charge",
                            style: TextStyle(color: Colors.white)),
                        Text("Discount", style: TextStyle(color: Colors.white)),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text("Total",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp)),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "10",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text("10", style: TextStyle(color: Colors.white)),
                        Text("10", style: TextStyle(color: Colors.white)),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text("10",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.sp)),
                      ],
                    ),
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Payment()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Colors.white),
                  child: Center(
                    child: Text(
                      "Place My Order",
                      style:
                          TextStyle(color: Colors.greenAccent, fontSize: 14.sp),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
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
                  "Order details",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
                ),
                SizedBox(
                  height: 10.h,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: card_items.length,
                  itemBuilder: (context, index) {
                    return Dismissible(
                      direction: DismissDirection.endToStart,
                      onDismissed: (direction) {
                        if (direction == DismissDirection.endToStart) {
                          setState(() {
                            card_items.removeAt(index);
                          });
                        }
                      },
                      background: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(15.r),
                        height: 103.h,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(22.r)),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.delete_outline_rounded,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                      key: Key(card_items[index].toString()),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(15.r),
                        height: 103.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(22.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 62.w,
                                  height: 62.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.r),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            card_items[index]["image"]),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      card_items[index]["text"],
                                      style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      card_items[index]["subtext"],
                                      style: TextStyle(
                                          fontSize: 14.sp, color: Colors.grey),
                                    ),
                                    Text(
                                      "\$ ${card_items[index]["price"]}",
                                      style: TextStyle(
                                          fontSize: 19.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.greenAccent),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                InkWell(
                                  child: Container(
                                      width: 26.w,
                                      height: 26.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.r),
                                          color: const Color.fromARGB(
                                              255, 165, 243, 205)),
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.green,
                                      )),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Text(card_items[index]["z"].toString()),
                                SizedBox(
                                  width: 10.w,
                                ),
                                InkWell(
                                  child: Container(
                                      width: 26.w,
                                      height: 26.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Color.fromRGBO(
                                                83, 232, 139, 1), // Light green
                                            Color.fromRGBO(21, 190, 119,
                                                1), // Darker green
                                          ],
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      )),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 10.h,
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
