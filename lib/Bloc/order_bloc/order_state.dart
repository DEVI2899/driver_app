import 'package:equatable/equatable.dart';

import '../../models/orderDetails.dart';

abstract class OrderDetailsState extends Equatable {
  const OrderDetailsState();

  @override
  List<Object> get props => [];
}

class OrderDetailsInitial extends OrderDetailsState {}

class OrderDetailsLoading extends OrderDetailsState {}

class OrderDetailsLoaded extends OrderDetailsState {
  final OrderInfo orderInfo;

  const OrderDetailsLoaded({required this.orderInfo});

  @override
  List<Object> get props => [orderInfo];
}

class OrderDetailsError extends OrderDetailsState {
  final String message;

  const OrderDetailsError({required this.message});

  @override
  List<Object> get props => [message];
}