import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class Voucher_Promo extends StatefulWidget {
   Voucher_Promo({super.key});

  @override
  State<Voucher_Promo> createState() => _Voucher_PromoState();
}

class _Voucher_PromoState extends State<Voucher_Promo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 20.r ,right: 20 ,left: 20),
        width: double.infinity,
        height: 57.h,
        padding: EdgeInsets.all(15.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
            
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(83, 232, 139, 1), // Light green
                              Color.fromRGBO(21, 190, 119, 1), // Darker green
                            ],
                          ),
        ),
        child: Center(child: Text("Check out" , style: TextStyle(color: Colors.white ,fontSize: 14.sp , fontWeight: FontWeight.bold),),),
      ),
    body :SingleChildScrollView(
        child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 50, right: 20, left: 20),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Pattern2.png"),
                    fit: BoxFit.cover)),
            child:
                Column(
                  crossAxisAlignment: 
                  CrossAxisAlignment.start, children: [
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
                "Voucher Promo",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
              ),
              SizedBox(
                height: 10.h,
              ),
            Container(
                      margin:EdgeInsets.only(bottom: 15),
                        padding: EdgeInsets.only(right: 30),
                        width: MediaQuery.of(context).size.width,
                        height: 150.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                         
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(83, 232, 139, 1), // Light green
                              Color.fromRGBO(21, 190, 119, 1), // Darker green
                            ],
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 180.w,
                              height: 150.h,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage("assets/hungry.png")),
                              ),
                               
                            ),
                            Column(
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
                          ],
                        )),
                           Container(
                      margin:EdgeInsets.only(bottom: 15),
                        padding: EdgeInsets.only(right: 30),
                        width: MediaQuery.of(context).size.width,
                        height: 150.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                    
                    color: Color.fromRGBO(238, 209, 160, 1)
                    

                        ),
                        child: Row(
                          children: [
                                 Container(
                              width: 180.w,
                              height: 150.h,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage("assets/food.png")),
                              ),
                               
                            ),

                            Align(
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
                                        color:Color.fromRGBO(107, 58, 91, 1)),
                                     

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
                                              color:Color.fromRGBO(107, 58, 91, 1),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10.sp),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  
            ]))));
  }
}
