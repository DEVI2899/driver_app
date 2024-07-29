import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:task_tarkiz/widgets/custom_button.dart';
import 'package:task_tarkiz/widgets/custom_outline_button.dart';
import 'package:task_tarkiz/widgets/date_widget.dart';
import 'package:task_tarkiz/widgets/myorders_widget.dart';
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: height * 0.03
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.05),
                    child: const Text(
                      'Orders',
                      style: TextStyle(
                          color: AppColors.textBlackColor,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                  const DateWidget()
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
            SizedBox(height: height *0.02),
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
              height: height *0.14,
              width: width*0.85,
              color: AppColors.fillColor,
              child: Padding(
                padding: EdgeInsets.only(top: height * 0.02),
                child:  Column(
                  children: [
                    Row(
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
                        Container(
                          height: height *0.01,
                          width: width * 0.01,
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
                    TextButton(onPressed: (){},
                        child: const Text('View Details',
                          style: TextStyle(color: AppColors.blueColor,
                              fontSize: 16.0, fontWeight: FontWeight.w700),))
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.03),
            const MyOrdersWidget(),
            SizedBox(height: height * 0.02),
            Card(
              elevation :10,
              child: Container(
                height: height * 0.22,
                width: width *0.9,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: AppColors.whiteColor
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: height *0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('Order No:',
                            style: TextStyle(
                                color: AppColors.textGreyColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          const Text('9845433550',
                            style: TextStyle(
                                color: AppColors.textBlackColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w900
                            ),
                          ),
                          SizedBox(width: width*0.02,),
                          const Text('06/04/2024',
                            style: TextStyle(
                                color: AppColors.textGreyColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          const Text('12:00:00',
                            style: TextStyle(
                                color: AppColors.textGreyColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500
                            ),
                          ),
        
        
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height * 0.02,),
                      child:  Row(
        
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.2,),
                            child: const Text('Customer Name',
                              style: TextStyle(
                                  color: AppColors.textGreyColor,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                          const Text('Order Status',
                            style: TextStyle(
                                color: AppColors.textGreyColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height * 0.01,left: width*0.04, right: width *0.02),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Faizan',
                            style: TextStyle(
                                color: AppColors.textBlackColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w900
                            ),
                          ),
        
                          CustomButton(
                              text: 'Delivered',
                              color: AppColors.toggleOnColor,
                              height: height * 0.03,
                              width : width * 0.3,
                            decoration: BoxDecoration(
                               shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10)
        
        
                          ),
                            onPressed: () {
                              if (kDebugMode) {
                                print('Button Pressed');
                              }
                            },)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.04, ),
                      child: const Text("Address",
                        style: TextStyle(
                            color: AppColors.textGreyColor,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.04 ),
                      child: const Text('Lorium Ipsum Dolor Sit Amet,Consecture \nAdipiscing Elit Sed Do Elusumod',
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          color:AppColors.textBlackColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
        
        
                  ],
                ) ,
              ),
            ),
            CustomOutlineButton(
                onPressed: (){}, text: 'View All', fontSize: 14, color: AppColors.borderColor, height: height * 0.05, width: width * 0.09, fontWeight: FontWeight.w600)
          ],
        ),
      ),
    );
  }
}
