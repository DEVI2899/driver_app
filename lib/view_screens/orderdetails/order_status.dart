
import 'package:flutter/material.dart';
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
  bool isSwitched = false;

  void _toggleSwitch(bool value) {
      setState(() {
        isSwitched = value;
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
              height: height * 0.17,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                       onTap:(){
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => const OrderHistory()),
                           );

                       },
                       child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(widget.user.profileImage),
                       ),
                     ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(widget.user.firstName,
                        style: const TextStyle(
                        color:AppColors.whiteColor,
                        fontWeight: FontWeight.w800,
                        fontSize: 16.0,
                      ),),
                      Text(widget.user.lastName,
                        style: const TextStyle(
                          color:AppColors.whiteColor,
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                        ),
                      )
                    ],
                  ),
                  Transform.scale(
                    scale: 1.1,
                    child: Switch(
                    value: isSwitched,
                    onChanged:  _toggleSwitch,
                                   activeTrackColor: AppColors.toggleOnColor,
                                   inactiveTrackColor: AppColors.toggleOffColor,
                                   activeColor: AppColors.whiteColor,
                                   inactiveThumbColor: AppColors.whiteColor,
                                 ),
                  ),


                  Image(image: const AssetImage('assets/images/scanicon.png'), width: width * 0.06,),
                  IconButton(onPressed: (){}, icon: Icon(
                      Icons.search,size: width *0.06,
                    color: AppColors.whiteColor,)
                  )
                ],
              ),
            ),
           isSwitched ? const StatusWidget() :const MapWidget() ,


          ],
        ),
      ),
    );
  }
}
