import 'package:flutter_bloc/flutter_bloc.dart';

import '../../services/login_service.dart';
import 'order_event.dart';
import 'order_state.dart';

class OrderDetailsBloc extends Bloc<OrderDetailsEvent, OrderDetailsState> {
  final LoginService loginService;

  OrderDetailsBloc( {required this.loginService}) : super(OrderDetailsInitial()) {
    on<FetchOrderDetails>(_onFetchOrderDetails);
  }

  void _onFetchOrderDetails(FetchOrderDetails event, Emitter<OrderDetailsState> emit) async {
    emit(OrderDetailsLoading());

    try {
      final orderDetails = await loginService.fetchOrderDetails(event.driverId, event.fromDate, event.toDate);
      if (orderDetails != null) {
        emit(OrderDetailsLoaded(orderInfo: orderDetails));
      } else {
        emit(const OrderDetailsError(message: 'Failed to load order details'));
      }
    } catch (error) {
      emit(OrderDetailsError(message: error.toString()));
    }
  }
}
