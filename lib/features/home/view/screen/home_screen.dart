import 'package:flutter/material.dart';
import 'package:tasks/features/home/view/widgets/app_bar.dart';
import 'package:tasks/features/home/view/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHome(),
      body: HomeBody(),
    );
  }
}
