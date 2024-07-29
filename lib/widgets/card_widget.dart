import 'package:flutter/material.dart';



import '../utils/appcolors.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Card(
          elevation :10,
          child: Container(
            height: height * 0.25,
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

                   ElevatedButton(onPressed: (){},
                       style: ElevatedButton.styleFrom(
                         backgroundColor:AppColors.toggleOnColor,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10)
                         )
                       ),
                       child: const Text("vehicle Assigned",
                         style: TextStyle(
                             color: AppColors.whiteColor,
                             fontSize: 16.0,
                             fontWeight: FontWeight.w700
                         ),))
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
        SizedBox(height: height *0.02,),
        Card(
          elevation :10,
          child: Container(
            height: height * 0.25,
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

                      ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:AppColors.toggleOffColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                          child: const Text("Not Assigned",
                            style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700
                            ),))
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


      ],
    );
  }
}
