import 'package:flutter/material.dart';
import 'package:tasks/features/details/view/widget/details_body.dart';
import 'package:tasks/features/details/view/widget/details_card.dart';
import 'package:tasks/features/home/model/users_model.dart';

class DetailsScreen extends StatelessWidget {
  final UserModel model;
  const DetailsScreen({super.key,required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DetailsBody(model: model),

    );
  }
}
