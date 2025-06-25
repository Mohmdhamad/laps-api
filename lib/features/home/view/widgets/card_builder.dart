import 'package:flutter/material.dart';
import 'package:tasks/core/functions/navigate.dart';
import 'package:tasks/features/home/model/users_model.dart';
import 'package:tasks/features/details/view/screen/details_screen.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class CardBuilder extends StatelessWidget {
   CardBuilder({super.key,required this.model});
  UserModel model;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        navigateTo(context, DetailsScreen(model: model,));
      },
      child: SizedBox(
        height: 85,
        child: Card(
          child: ListTile(
            leading: Container(
                height: 50,
                width: 50,
                decoration:BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15),
                ),
                child:Center(
                  child: Text('${model.name.firstname[0].toUpperCase()}${model.name.lastname[0].toUpperCase()}',
                  style: titleStyle(color: AppColors.blueGrey),),
                ),),
            title: Text(model.username,style: titleStyle(textSize: 18),),
            subtitle:Text(model.email,style: hashStyle(),) ,
            trailing: Icon(Icons.arrow_forward_ios,color: AppColors.grey,),
          ),

        ),
      ),
    )
    ;
  }
}
