import 'package:flutter/material.dart';
import '../../../../core/style/text_style.dart';

AppBar appBarHome(){
  return AppBar(
    centerTitle: true,
    title: Text('Users',style: titleStyle(),),
  );
}

