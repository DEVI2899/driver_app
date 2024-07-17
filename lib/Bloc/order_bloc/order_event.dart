

import 'package:equatable/equatable.dart';

abstract class OrderDetailsEvent extends Equatable {
  const OrderDetailsEvent();

  @override
  List<Object> get props => [];
}

class FetchOrderDetails extends OrderDetailsEvent {
  final int driverId;
  final String fromDate;
  final String toDate;

  const FetchOrderDetails({required this.driverId, required this.fromDate, required this.toDate});

  @override
  List<Object> get props => [driverId, fromDate, toDate];
}