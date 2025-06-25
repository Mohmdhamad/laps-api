import 'package:flutter/material.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(15)
            ),
            child: Icon(Icons.people_alt_outlined,
              size: 50,
              color: AppColors.grey,
            ),
          ),
          const SizedBox(height: 20,),
          Text('Users Area',
            style:titleStyle(color: AppColors.white),
          ),
        ],
      ),
    );
  }
}
