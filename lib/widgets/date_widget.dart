import 'package:flutter/material.dart';

import '../utils/appcolors.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.width;
    return  Padding(
      padding: EdgeInsets.only(right: width *0.05),
      child: Container(
        height:height *0.09,
        width :width * 0.45,
        decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.borderColor, //color of border
              width: 0.99, //width of border
            ),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10)

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(onPressed: (){},
                icon: const Icon(Icons.calendar_month_sharp,size: 20,)),
            const Text('2024/07/01-',
              style: TextStyle(
                  color: AppColors.textBlackColor,
                  fontSize: 11.5,
                  fontWeight: FontWeight.w600
              ),),
            const Text('2024/07/16',
              style: TextStyle(
                  color: AppColors.textBlackColor,
                  fontSize: 11.5,
                  fontWeight: FontWeight.w600
              ),
            ),
          ],
        ),
      ),
    );
  }
}
