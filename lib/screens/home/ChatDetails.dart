import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/screens/home/call.dart';
class ChatDetails extends StatefulWidget {
  String name;
  String image;
  ChatDetails({required this.name, required this.image});

  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  TextEditingController Textcontroller = TextEditingController();
  List<ChatModel> Chat = [];
  bool Sender1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.w),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/Pattern.png',
                  ),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
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
                'Chat',
                style: TextStyle(
                  fontSize: 30.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15.h),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                padding: EdgeInsets.all(15.r),
                height: 93.h,
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
                          width: 62.w,
                          height: 62.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.r),
                              image: DecorationImage(
                                  image: AssetImage(widget.image),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.name,
                              style: TextStyle(
                                  fontSize: 15.sp, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Online",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color.fromARGB(255, 162, 249, 226),
                      ),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Call(image: widget.image , name: widget.name,)));
                          },
                          child: Container(
                            width: 20.w,
                            height: 20.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/call.png"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 430.h,
                child: ListView.builder(
                  itemCount: Chat.length,
                  itemBuilder: (context, index) => BubbleSpecialThree(
                    isSender: Chat[index].sender == 'chat1',
                    text: Chat[index].text,
                    color: Chat[index].sender == 'chat1'
                        ? Colors.blue
                        : Color.fromRGBO(246, 246, 246, 1),
                    tail: true,
                    textStyle: TextStyle(
                        color: Chat[index].sender == 'chat1'
                            ? Colors.white
                            : Colors.black,
                        fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                    border: Border.all(
                      color: Colors.blueAccent,
                      width: 1.5,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: Textcontroller,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.send,
                          color: Colors.green,
                        ),
                        onPressed: () {
                          Chat.add(ChatModel(Textcontroller.text,
                              Sender1 ? 'chat1' : 'chat2'));
                          Textcontroller.clear();
                          Sender1 = !Sender1;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChatModel {
  String text;
  String sender;

  ChatModel(this.text, this.sender);
}
