import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 50, right: 20, left: 20),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Pattern2.png"), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Find Your\nFavorite Food",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 31.sp),
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
          TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Color.fromRGBO(218, 99, 23, 1),
                ),
                hintText: "What do you want to order?",
                hintStyle: TextStyle(
                  color: Color.fromRGBO(218, 99, 23, 1),
                ),
                fillColor: Color.fromRGBO(249, 168, 77, 1),
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        BorderSide(color: Color.fromRGBO(249, 168, 77, 1))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        BorderSide(color: Color.fromRGBO(249, 168, 77, 1))),
                border: UnderlineInputBorder(borderSide: BorderSide.none)),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            "Type",
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Container(
                width: 80,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color.fromRGBO(249, 168, 77, 1),
                ),
                child: Center(
                    child: Text(
                  "Restaurant",
                  style: TextStyle(
                    color: Color.fromRGBO(218, 99, 23, 1),
                  ),
                )),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 80,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color.fromRGBO(249, 168, 77, 1),
                ),
                child: Center(
                    child: Text(
                  "Menu",
                  style: TextStyle(
                    color: Color.fromRGBO(218, 99, 23, 1),
                  ),
                )),
              )
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            "Location",
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Container(
                width: 80,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color.fromRGBO(249, 168, 77, 1),
                ),
                child: Center(
                    child: Text(
                  "1 Km",
                  style: TextStyle(
                    color: Color.fromRGBO(218, 99, 23, 1),
                  ),
                )),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 80,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color.fromRGBO(249, 168, 77, 1),
                ),
                child: Center(
                    child: Text(
                  ">10 Km",
                  style: TextStyle(
                    color: Color.fromRGBO(218, 99, 23, 1),
                  ),
                )),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 80,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color.fromRGBO(249, 168, 77, 1),
                ),
                child: Center(
                    child: Text(
                  "<10 Km",
                  style: TextStyle(
                    color: Color.fromRGBO(218, 99, 23, 1),
                  ),
                )),
              )
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            "Food",
            style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Container(
                width: 80,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color.fromRGBO(249, 168, 77, 1),
                ),
                child: Center(
                    child: Text(
                  "Cake",
                  style: TextStyle(
                    color: Color.fromRGBO(218, 99, 23, 1),
                  ),
                )),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 80,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color.fromRGBO(249, 168, 77, 1),
                ),
                child: Center(
                    child: Text(
                  "Soup",
                  style: TextStyle(
                    color: Color.fromRGBO(218, 99, 23, 1),
                  ),
                )),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color.fromRGBO(249, 168, 77, 1),
                ),
                child: Center(
                    child: Text(
                  "Main Course",
                  style: TextStyle(
                    color: Color.fromRGBO(218, 99, 23, 1),
                  ),
                )),
              )
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              Container(
                width: 80,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color.fromRGBO(249, 168, 77, 1),
                ),
                child: Center(
                    child: Text(
                  "Appetizer",
                  style: TextStyle(
                    color: Color.fromRGBO(218, 99, 23, 1),
                  ),
                )),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 80,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color.fromRGBO(249, 168, 77, 1),
                ),
                child: Center(
                    child: Text(
                  "Dessert",
                  style: TextStyle(
                    color: Color.fromRGBO(218, 99, 23, 1),
                  ),
                )),
              ),
            ],
          ),
          SizedBox(
            height: 150.h,
          ),
          Container(
            height: 57.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(83, 232, 139, 1), // Light green
                  Color.fromRGBO(21, 190, 119, 1), // Darker green
                ],
              ),
            ),
            child: Center(
              child: Text(
                "Search",
                style: TextStyle(fontSize: 14.sp ,color: Colors.white),
              ),
            ),
          )
        ],
      ),
    )));
  }
}
// Center(
//         child:  
//       ),