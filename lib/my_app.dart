import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks/features/home/view_model/cubit/app_cubit.dart';
import 'package:tasks/features/splash/view/screen/splash_screen.dart';

class MyApp extends StatelessWidget{
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context){
    return BlocProvider(
      create: (context)=>AppCubit()..getData(),
      child: MaterialApp(
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}