import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/screens/Entering/Signin.dart';
import 'package:food_app/screens/Entering/forget_password.dart';
import 'package:food_app/screens/Entering/reset_succesful.dart';
import 'package:food_app/screens/Entering/signup.dart';
import 'package:food_app/screens/Entering/signup_process.dart';
import 'package:food_app/screens/Entering/signup_process2.dart';
import 'package:food_app/screens/Entering/signup_process3.dart';
import 'package:food_app/screens/Entering/signup_process4.dart';
import 'package:food_app/screens/Entering/signup_process5.dart';
import 'package:food_app/screens/Entering/signup_success.dart';
import 'package:food_app/screens/Entering/update_password.dart';
import 'package:food_app/screens/Entering/verification_code.dart';
import 'package:food_app/screens/home/Home.dart';
import 'package:food_app/screens/home/Restaurant.dart';
import 'package:food_app/screens/home/search.dart';
import 'package:food_app/screens/navigator.dart';
import 'package:food_app/screens/stratest/StartPage.dart';
import 'package:food_app/screens/stratest/onboarding2.dart';
import 'package:food_app/screens/stratest/onboarding3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      child: MaterialApp(
        title: 'Food_app',
        debugShowCheckedModeBanner: false,
        initialRoute: 'onboarding1',
        routes: {
          'onboarding1': (context) => onboarding1(),
          'onboarding2': (context) => onboarding2(),
          'onboarding3': (context) => onboarding3(),
          'signup': (context) => signup(),
          'signin': (context) => signin(),
          'signup_process': (context) => signup_process(),
          'signup_process2': (context) => signup_process2(),
          'signup_process3': (context) => signup_process3(),
          'signup_process4': (context) => signup_process4(),
          'signup_process5': (context) => signup_process5(),
          'signup_success': (context) => signup_success(),
          'forget_password': (context) => forget_password(),
          'verification_code': (context) => verification_code(),
          'update_password': (context) => update_password(),
          'reset_succesful': (context) => reset_succesful(),
          'navigator': (context) => navigator(),
          'home': (context) => Home(),
          'search': (context) => Search(),
          'Restaurant': (context) => Restaurant(),
        },
      ),
    );
  }
}
