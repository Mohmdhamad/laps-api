import 'package:flutter/material.dart';
import 'package:tasks/features/home/model/lapModel.dart';
import 'package:tasks/features/home/view_model/cubit/app_cubit.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class DetailsCard extends StatelessWidget {
  final ProductModel model;
  const DetailsCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    AppCubit cubit = AppCubit.get(context);
    return Card(
      child: Column(
        children: [
          Image(image: NetworkImage(model.image),),
          ListView.builder(
              itemCount: model.images.length,
              itemBuilder: (context,index){
                return Image(image: NetworkImage(model.images[index]),fit: BoxFit.fill,);
    }
    ),
        ],
      ),
    );
  }
}
