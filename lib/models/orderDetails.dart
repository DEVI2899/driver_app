
import 'dart:convert';

class OrderDetails {
  final int statusCode;
  final OrderInfo data;
  final dynamic message;

  OrderDetails({
    required this.statusCode,
    required this.data,
    required this.message,
  });



  factory OrderDetails.fromMap(Map<String, dynamic> json) => OrderDetails(
    statusCode: json["statusCode"],
    data: OrderInfo.fromMap(json["data"]),
    message: json["message"],
  );

  Map<String, dynamic> toMap() => {
    "statusCode": statusCode,
    "data": data.toMap(),
    "message": message,
  };
}

class OrderInfo {
  final int totalOrderCount;
  final int pendingOrderCount;
  final int completedOrderCount;
  final int otherOrderCount;
  final int cashCount;
  final double sumOfCash;

  OrderInfo({
    required this.totalOrderCount,
    required this.pendingOrderCount,
    required this.completedOrderCount,
    required this.otherOrderCount,
    required this.cashCount,
    required this.sumOfCash,
  });



  factory OrderInfo.fromMap(Map<String, dynamic> json) => OrderInfo(
    totalOrderCount: json["totalOrderCount"],
    pendingOrderCount: json["pendingOrderCount"],
    completedOrderCount: json["completedOrderCount"],
    otherOrderCount: json["otherOrderCount"],
    cashCount: json["cashCount"],
    sumOfCash: json["sumOfCash"],
  );

  Map<String, dynamic> toMap() => {
    "totalOrderCount": totalOrderCount,
    "pendingOrderCount": pendingOrderCount,
    "completedOrderCount": completedOrderCount,
    "otherOrderCount": otherOrderCount,
    "cashCount": cashCount,
    "sumOfCash": sumOfCash,
  };
}
