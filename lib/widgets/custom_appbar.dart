import 'package:flutter/material.dart';
import 'package:task_tarkiz/utils/appcolors.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  const CustomAppBar({super.key, required this.height,});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return  SizedBox(
      height: height,
      child: Padding(
        padding:  EdgeInsets.only(left: width * 0.03, top: height * 0.4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios, color: AppColors.whiteColor, size: 20,),

            ),
          const Text("Order History",
                  style: TextStyle(
                    color:AppColors.whiteColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 25.0,
                  ),
              ),

          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
