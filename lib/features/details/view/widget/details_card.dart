import 'package:flutter/material.dart';
import 'package:tasks/features/home/model/users_model.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';

class DetailsCard extends StatelessWidget {
  DetailsCard({super.key, required this.model});

  UserModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: AppColors.deepPurple,
                  radius: 30,
                  child: Text(
                    '${model.name.firstname[0].toUpperCase()}${model.name.lastname[0].toUpperCase()}',
                    style: titleStyle(color: AppColors.white),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                ),
                child: Text(
                  'name : ${model.name.firstname} ${model.name.lastname}',
                  style: bodyStyle(),
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                ),
                child: Text(
                  'user name : ${model.username}',
                  style: bodyStyle(),
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                ),
                child: Text('phone : ${model.phone}', style: bodyStyle()),
              ),
              Container(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                ),
                child: Text('email : ${model.email}', style: bodyStyle()),
              ),
              Container(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                ),
                child: Text('password : ${model.password}', style: bodyStyle()),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 1,
                color: AppColors.grey,
                ),
              ),
              Container(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                ),
                child: Text('address', style: titleStyle(
                  textSize: 18,
                )),
              ),
              Container(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                ),
                child: Text('geo location : ${model.address.geolocation.lat}/${model.address.geolocation.long}', style: bodyStyle()),
              ),
              Container(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                ),
                child: Text('location : ${model.address.number} , ${model.address.street} , ${model.address.city}', style: bodyStyle()),
              ),
              Container(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                ),
                child: Text('zip code : ${model.address.zipcode}', style: bodyStyle()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
