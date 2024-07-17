import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task_tarkiz/utils/appcolors.dart';
import 'package:task_tarkiz/view_screens/splashScreen/splash_screen_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.push(context ,MaterialPageRoute(builder: (_) => SplashScreenPage()))

    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.blueColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Image.asset(
                  "assets/images/icon1.png",
                  height:100.0,
                  width: 100.0,
                ),
                const Text("DRIVER DXB",textAlign:TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),


              ],
            ),
          ],
        ),
      ),

    );
  }
}
