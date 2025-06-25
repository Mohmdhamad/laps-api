import 'package:dio/dio.dart';
import 'package:tasks/features/home/model/lapModel.dart';

class LapData{
  static final Dio dio =Dio();
   static Future<List<dynamic>> getData()async{
    var response =await dio.get('https://elwekala.onrender.com/product/Laptops');
    List<dynamic>data = response.data['product'];
    List<ProductModel>list = data.map((e)=>ProductModel.fromJson(e)).toList();
    return list ;
  }
}