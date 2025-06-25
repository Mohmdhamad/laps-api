import 'package:dio/dio.dart';
import 'package:tasks/features/home/model/users_model.dart';

class DioHelper{
  static Dio dio = Dio();
  static Future<List<dynamic>> getData()async{
    var response =await dio.get('https://fakestoreapi.com/users');
    List<dynamic> data = response.data;
    return data.map((e)=>UserModel.fromJson(e)).toList();
  }
}