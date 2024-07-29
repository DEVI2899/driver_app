
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:task_tarkiz/models/data_model.dart';
import 'package:task_tarkiz/view_screens/orderdetails/order_history.dart';
import 'package:task_tarkiz/widgets/map_widget.dart';
import 'package:task_tarkiz/widgets/status_widget.dart';

import '../../utils/appcolors.dart';

class OrderStatus extends StatefulWidget {
  const OrderStatus({super.key, required this.user});
  final DataModel user;

  @override
  State<OrderStatus> createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {

  final _controller = ValueNotifier<bool>(false);
  bool _initialValue = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
    });
  }






  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.blueColor,
      body: Padding(
        padding: EdgeInsets.only(top:height*0.02 ),
        child: Column(
          children: [
            Container(
              color: AppColors.blueColor,
              height: height * 0.14,
              child:  Padding(
                padding: _initialValue ?EdgeInsets.only(left: width * 0.02):EdgeInsets.only(left: width * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('Ahmed K',
                              style: TextStyle(
                              color:AppColors.whiteColor,
                              fontWeight: FontWeight.w900,
                              fontSize: 26.0,
                            ),),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const OrderHistory()),
                                );
                              },
                              icon: const Icon(Icons.arrow_forward_ios, color: AppColors.whiteColor,),
                            ),
                            _initialValue ? SizedBox(width: width * 0.09,): SizedBox(width: width *0.32,),

                            AdvancedSwitch(
                              activeColor: AppColors.toggleOnColor,
                              inactiveColor: AppColors.toggleOffColor,
                              activeChild: const Text('Online',
                                style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                              inactiveChild: const Text('Offline',
                                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                              width: 80,
                              onChanged: (value) {
                                setState(() {
                                  _initialValue = !_initialValue;
                                });
                              },
                              controller: _controller,
                            ),
                            SizedBox(width: width * 0.03,),
                            Visibility(
                              visible: _initialValue,
                              child: ColorFiltered(
                                colorFilter: const ColorFilter.mode(
                                AppColors.iconColor,
                                  BlendMode.modulate,
                               ),
                                child: Image.asset('assets/images/scan.png',
                                  fit: BoxFit.cover,
                                  color: AppColors.iconColor,
                                  width: width * 0.09,
                                  height: height * 0.04,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                            SizedBox(width: width * 0.03,),
                            Visibility(
                              visible: _initialValue,
                              child: Image.asset('assets/images/light.png',
                                fit: BoxFit.cover,
                                color: AppColors.iconColor,
                                width: width * 0.09,
                                height: height * 0.04,
                                filterQuality: FilterQuality.medium,
                              ),
                            ),
                          ],
                        ),

                        Text('Lorem Ipsum Dolor Sit Amet,Consectetur',
                          style: TextStyle(
                            color:AppColors.whiteColor,
                            fontWeight: FontWeight.w500,
                            fontSize: _initialValue ?  16 :16,
                          ),
                        ),

                      ],

                     ),


                  ],
                ),
              ),


            ),
            _initialValue ? const StatusWidget() :const MapWidget() ,
          ],
        ),
      ),
    );
  }
}
