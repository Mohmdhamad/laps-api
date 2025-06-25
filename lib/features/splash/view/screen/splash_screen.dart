import 'package:flutter/material.dart';
import 'package:tasks/core/functions/navigate.dart';
import 'package:tasks/features/home/view/screen/home_screen.dart';
import 'package:tasks/features/splash/view/widgets/splash_body.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      navigateAndFinish(context, HomeScreen());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SplashBody(),
    );
  }
}
