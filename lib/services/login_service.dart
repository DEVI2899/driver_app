import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:task_tarkiz/models/orderDetails.dart';
import '../models/data_model.dart';

import '../utils/api_constanst.dart';

class LoginService{
  Future<DataModel?> loginRequest(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl$loginEndpoint'), // Replace with your login URL
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'emailId': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);

      if (responseData['statusCode'] == 200) {
        final userData = responseData['data'];
        return DataModel.fromMap(userData);
      } else {
        throw Exception(responseData['message']);
      }
    } else {
      throw Exception('Failed to login');
    }
  }

  Future<OrderInfo> fetchOrderDetails(int driverId, String fromDate, String toDate) async {
    final response = await http.post(
      Uri.parse('$baseUrl$getOrderHistoryCountEndpoint'), // Replace with your API URL
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'driverId': driverId,
        'fromDate': fromDate,
        'toDate': toDate,
      }),
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);

      if (responseData['statusCode'] == 200) {
        final orderData = responseData['data'];
        return OrderInfo.fromMap(orderData);
      } else {
        throw Exception(responseData['message'] ?? 'Unknown error');
      }
    } else {
      throw Exception('Failed to fetch order details');
    }
  }


}