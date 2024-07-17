import 'package:flutter/material.dart';

import '../models/orderDetails.dart';
import '../utils/appcolors.dart';

class OrderInfoWidget extends StatelessWidget {
  final OrderInfo orderInfo;
  const OrderInfoWidget({super.key, required this.orderInfo});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
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
            padding: EdgeInsets.only(
              top: height * 0.03
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround ,
              children: [
                const Text(
                  'Orders',
                  style: TextStyle(
                      color: AppColors.textBlackColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700
                  ),
                ),
                Container(
                  height:height *0.04,
                  width :width * 0.4,

                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.borderColor, //color of border
                        width: 0.99, //width of border
                      ),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.calendar_month_sharp,size: 15,)),
                      const Text('2024-07-01-',
                        style: TextStyle(
                            color: AppColors.textBlackColor,
                            fontSize: 9.0,
                            fontWeight: FontWeight.w500
                        ),),
                      const Text('2024-07-16',
                        style: TextStyle(
                            color: AppColors.textBlackColor,
                            fontSize: 9.0,
                            fontWeight: FontWeight.w500
                        ),),

                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: height *0.02),
          Card(
            elevation: 10,
            child: Container(
              height: height * 0.2,
              width: width *0.9,
              decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: AppColors.whiteColor
              ),
              child: Padding(
                padding: EdgeInsets.only(top: height *0.02,  ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children :[
                        Column(
                          children: [
                            Text(
                              '${orderInfo.totalOrderCount}',
                              style: const TextStyle(
                                  color: AppColors.textBlackColor,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            const Text(
                              'Total Orders',
                              style: TextStyle(
                                  color: AppColors.blueColor,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500
                              ),
                            ),

                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '${orderInfo.pendingOrderCount}',
                              style: const TextStyle(
                                  color: AppColors.textBlackColor,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            const Text(
                              'Pending Delivery',
                              style: TextStyle(
                                  color: AppColors.orangeColor,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500
                              ),
                            )

                          ],
                        )
                      ]
                    ),
                    SizedBox(height:  height *0.02,),
                    const Divider(),
                    Padding(
                      padding: EdgeInsets.only(top: height * 0.01),
                      child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children :[
                            Column(
                              children: [
                                Text(
                                  '${orderInfo.completedOrderCount}',
                                  style: const TextStyle(
                                      color: AppColors.textBlackColor,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                                const Text(
                                  'Completed Delivery',
                                  style: TextStyle(
                                      color: AppColors.toggleOnColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '${orderInfo.otherOrderCount}',
                                  style: const TextStyle(
                                      color: AppColors.textBlackColor,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                                const Text(
                                  'Other Orders',
                                  style: TextStyle(
                                      color: AppColors.lightPurpleColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500
                                  ),
                                )
                              ],
                            )


                          ]
                      ),
                    ),


                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: height *0.03),
          Padding(
            padding: EdgeInsets.only(right: width * 0.6),
            child: const Text(
              'Cash Orders',
              style: TextStyle(
                  color: AppColors.textBlackColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700
              ),
            ),
          ),
          Container(
            height: height *0.1,
            width: width*0.85,
            color: AppColors.fillColor,
            child: Padding(
              padding: EdgeInsets.only(top: height * 0.02),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children:[
                      const Text(
                        'Total cash orders',
                        style: TextStyle(
                            color: AppColors.textBlackColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                       Text(
                        '${orderInfo.sumOfCash}',
                        style: const TextStyle(
                            color: AppColors.textBlackColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700
                        ),
                      )
                ]
                  ),
                  const VerticalDivider(
                    thickness: 1,
                  ),
                  const Column(
                      children:[
                        Text(
                          ' Total Cash In-hand',
                          style: TextStyle(
                              color: AppColors.textBlackColor,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        Text(
                          'AED120',
                          style: TextStyle(
                              color: AppColors.textBlackColor,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w700
                          ),
                        )
                      ]
                  ),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
