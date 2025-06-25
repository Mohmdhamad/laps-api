import 'package:flutter/material.dart';
import 'package:tasks/core/functions/navigate.dart';
import 'package:tasks/features/home/model/lapModel.dart';
import 'package:tasks/features/details/view/screen/details_screen.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class CardBuilder extends StatelessWidget {
   const CardBuilder({super.key,required this.model});
 final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        navigateTo(context, DetailsScreen(model: model,));
      },
      child: SizedBox(
        height: 120,
        child: Card(
          child:Column(
            children: [
              Expanded(
                child: Image(image: NetworkImage(model.image),
                fit: BoxFit.fill,
                ),
              ),
              Text(model.name,style: bodyStyle(),),
              Text(model.company,style: bodyStyle(),),
              Text('\$ ${model.price}', style: bodyStyle(color: AppColors.green),),
            ],
          ),

        ),
      ),
    )
    ;
  }
}
