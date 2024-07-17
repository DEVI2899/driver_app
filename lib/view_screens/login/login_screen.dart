import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_tarkiz/utils/appcolors.dart';
import 'package:task_tarkiz/view_screens/orderdetails/order_status.dart';
import '../../Bloc/login_bloc/login_bloc.dart';
import '../../Bloc/login_bloc/login_event.dart';
import '../../Bloc/login_bloc/login_state.dart';




class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final loginBloc = BlocProvider.of<LoginBloc>(context);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
     backgroundColor: AppColors.blueColor,
      body: SingleChildScrollView(
        child: BlocBuilder<LoginBloc, LoginState>(
          bloc: loginBloc,
            builder: (context, state) {
              if (state is LoginSuccess) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OrderStatus(user: state.user)),
                  );
                });

              }
              else if (state is LoginFailure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.error)),
                );
              }
                   return Column(
              children: [
              Container(
                color: AppColors.blueColor,
                height: height * 0.15,
               ),
                Container(
                  height: height *0.85,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                    ),
                    color: AppColors.whiteColor
                  ),
                  width: width,
                  child:  Padding(
                    padding: EdgeInsets.only(left: width *0.05, top: height *0.03, right: width*0.05),
                    child:  Form(
                           key: _formKey,
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               const Text("Let's Get Started",
                                 style: TextStyle(
                                   color: AppColors.textBlackColor,
                                   fontWeight: FontWeight.bold,
                                   fontSize: 35.0,
                                 ),
                               ),
                               SizedBox(height: height * 0.01,),
                               const Text("fill this form to continue",
                                 style: TextStyle(
                                   color: AppColors.textGreyColor,
                                   fontWeight: FontWeight.normal,
                                   fontSize: 20.0,
                                 ),
                               ),
                               SizedBox(height: height * 0.02,),
                               const Text("Email Address",
                                 style: TextStyle(
                                   color: AppColors.textGreyColor,
                                   fontWeight: FontWeight.normal,
                                   fontSize: 15.0,
                                 ),

                               ),
                               SizedBox(height: height * 0.01,),
                               TextFormField(

                                 controller: _emailController,
                                 validator: (value) {
                                   if (value == null || value.isEmpty) {
                                     return 'Please enter a Email';
                                   }
                                   if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(
                                       value)) {
                                     return 'Please enter a valid email';
                                   }
                                   return null;
                                 },

                                 decoration: InputDecoration(
                                   filled: true,
                                   fillColor: AppColors.fillColor,
                                   suffixIcon: const Icon(
                                     Icons.person_outline_rounded,
                                     color: AppColors.textGreyColor,),
                                   border: InputBorder.none,
                                   hintText: "Email ",
                                   hintStyle: TextStyle(color: Colors.grey[700]),

                                 ),

                               ),
                               SizedBox(height: height * 0.02,),
                               const Text("password",
                                 style: TextStyle(
                                   color: AppColors.textGreyColor,
                                   fontWeight: FontWeight.normal,
                                   fontSize: 15.0,
                                 ),

                               ),
                               SizedBox(height: height * 0.01,),
                               TextFormField(
                                 controller: _passwordController,
                                 validator: (value) {
                                   if (value == null || value.isEmpty) {
                                     return 'Please enter a password';
                                   }
                                   if (value.length < 6) {
                                     return 'Password must be at least 6 characters long';
                                   }
                                   return null;
                                 },
                                 obscureText: true,
                                 decoration: InputDecoration(
                                   filled: true,
                                   fillColor: AppColors.fillColor,
                                   suffixIcon: const Icon(
                                     Icons.remove_red_eye_outlined,
                                     color: AppColors.textGreyColor,),
                                   border: InputBorder.none,
                                   hintText: "Password",
                                   hintStyle: TextStyle(color: Colors.grey[700]),
                                   //  label: const Text('password'),
                                 ),

                               ),
                               SizedBox(height: height * 0.07,),
                               ElevatedButton(onPressed: () {
                                 if (_formKey.currentState!.validate()) {
                                   _formKey.currentState!.save();
                                     loginBloc.add(
                                         LoginButtonPressed(email: _emailController.text,
                                             password: _passwordController.text)
                                     );



                                 }
                                 else {
                                   ScaffoldMessenger.of(context).showSnackBar(
                                       const SnackBar(
                                           content: Text('login failed',
                                               style: TextStyle(
                                                   color: AppColors.whiteColor)
                                           )
                                       )
                                   );
                                 }
                               },
                                   style: ElevatedButton.styleFrom(
                                       backgroundColor: AppColors.blueColor,
                                       minimumSize: const Size(350, 60)
                                   ),
                                   child: const Text("Login",
                                     style: TextStyle(
                                       color: AppColors.whiteColor,
                                       fontWeight: FontWeight.bold,
                                       fontSize: 20.0,
                                     ),
                                   )
                               )
                             ],
                           ),
                         ),
                        )
                   )
                 ]
                  );
                       },
                    ),

                  ),
              );

  }
}
