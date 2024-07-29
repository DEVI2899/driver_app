import 'package:flutter/material.dart';
import 'package:task_tarkiz/utils/appcolors.dart';
import 'package:task_tarkiz/widgets/card_widget.dart';


class StatusWidget extends StatefulWidget {
  const StatusWidget({super.key});

  @override
  State<StatusWidget> createState() => _StatusWidgetState();
}

class _StatusWidgetState extends State<StatusWidget> {

  
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Container(
        width:  width,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30)
            ),
            color: AppColors.whiteColor
        ),
        child: Column(
         children: [
            Padding(
              padding: EdgeInsets.only(top:height * 0.03 ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height *0.05,
                    width: width * 0.42,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30)
                        ),
                        color: AppColors.containerColor
                    ),
                    child: const Center(
                      child: Text(
                        'Current Orders',
                        style: TextStyle(
                          color: AppColors.blueColor,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: height *0.05,
                    width: width * 0.42,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30)
                        ),
                        color: AppColors.fillColor
                    ),
                    child: const Center(
                      child: Text(
                        'Upcoming Orders',
                        style: TextStyle(
                            color: AppColors.textBlackColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height:  height *0.02,),
            const CardWidget(),



         ],
        ),
      ),
    );
  }
}
