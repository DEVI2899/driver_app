import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:task_tarkiz/Bloc/order_bloc/order_bloc.dart';
import 'package:task_tarkiz/services/login_service.dart';
import 'package:task_tarkiz/view_screens/splashScreen/splash_screen.dart';


import 'Bloc/login_bloc/login_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final LoginService loginService = LoginService();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(create: (context) =>LoginBloc(loginService: loginService)),
        BlocProvider(create: (context) =>OrderDetailsBloc(loginService: loginService))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
         home: const SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
