import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_tarkiz/utils/appcolors.dart';
import 'package:task_tarkiz/widgets/order_info_widget.dart';
import '../../Bloc/order_bloc/order_bloc.dart';
import '../../Bloc/order_bloc/order_event.dart';
import '../../Bloc/order_bloc/order_state.dart';
import '../../widgets/custom_appbar.dart';


class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});


  final int driverId = 13; // Example driver ID
  final String fromDate = '2024-07-01'; // Example from date
  final String toDate = '2024-07-16';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final orderDetailsBloc = BlocProvider.of<OrderDetailsBloc>(context)
      ..add(FetchOrderDetails(driverId: driverId, fromDate: fromDate, toDate: toDate));

    return Scaffold(
      backgroundColor: AppColors.blueColor,
      appBar: CustomAppBar(
        height: height * 0.14,
      ),
      body:  BlocBuilder<OrderDetailsBloc, OrderDetailsState>(
        builder: (context, state) {
          if (state is OrderDetailsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is OrderDetailsLoaded) {
            return OrderInfoWidget(orderInfo: state.orderInfo,);
          } else if (state is OrderDetailsError) {
            return Center(child: Text(state.message));
          } else {
            return const Center(child: Text('Press the button to load order details'));
          }
        },
      ),
    );
  }
}
