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
    return Expanded(
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                  height: 120,
                  child: Image(image: NetworkImage(model.image),)),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                  itemCount: model.images.length,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Image(image: NetworkImage(model.images[index]),fit: BoxFit.fill,);
                    }
                    ),
            ),
            Row(
              children: [
                Text('Device : ',style: titleStyle(textSize: 18),),
                Text(model.name,style: bodyStyle(),)
              ],
            ),
            Row(
              children: [
                Text('Status : ',style: titleStyle(textSize: 18),),
                Text(model.status,style: bodyStyle(
                  color: model.status == 'New' ? AppColors.blue : AppColors.red
                ),)
              ],
            ),
            Row(
              children: [
                Text('Price : ',style: titleStyle(textSize: 18),),
                Text(model.price.toString(),style: bodyStyle(
                  color: AppColors.green,
                ),)
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Description : ',style: titleStyle(textSize: 18),),
                Expanded(child: Text(model.description.toString(),style: bodyStyle(),))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
