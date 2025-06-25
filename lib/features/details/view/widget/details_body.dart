import 'package:flutter/material.dart';
import 'package:tasks/features/details/view/widget/details_card.dart';
import 'package:tasks/features/home/model/users_model.dart';

class DetailsBody extends StatelessWidget {
  final UserModel model;
   const DetailsBody({super.key,required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 17),
      child: DetailsCard(model: model),
    ) ;
  }
}
