import 'package:flutter/material.dart';
import 'package:task_tarkiz/utils/appcolors.dart';
import 'package:task_tarkiz/view_screens/login/login_screen.dart';


class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/splash.png",
                  height: 400.0,
                  width: 300.0,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: height*0.02,),
                const Text("Elevating Delivery Standards",textAlign:TextAlign.center,
                  style: TextStyle(
                    color:AppColors.textBlackColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(height:height *0.02 ),
                const Align(
                  alignment: Alignment.center,
                  child: Text('Lorium Ipsum Dolor Sit Amet,Consecture \n  Adipiscing Elit Sed Do Elusumod',
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      color:AppColors.textGreyColor,
                      fontWeight: FontWeight.normal,
                      fontSize: 16.0,
                    ),
                  ),
                ),

              ],
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context ,MaterialPageRoute(builder: (_) => const LoginScreen()));

            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.blueColor,
              minimumSize: const Size(350, 50)
            ),
                child: const Text("Let's Start",
                  style: TextStyle(
                  color:AppColors.whiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
                )
            )
          ],
        ),
      ),
    );
  }
}
