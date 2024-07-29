import 'package:flutter/material.dart';
import 'package:task_tarkiz/widgets/date_widget.dart';

import '../utils/appcolors.dart';

class MyOrdersWidget extends StatelessWidget {
  const MyOrdersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.width;
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: width *0.05),
          child: const Text('My orders',
            style: TextStyle(
                color: AppColors.textBlackColor,
                fontSize: 17.0,
                fontWeight: FontWeight.w700
            ),
          ),
        ),

         const DateWidget()
      ],
    );
  }
}
