import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks/core/dio/dio_helper.dart';
import 'package:tasks/features/home/model/users_model.dart';
import 'package:tasks/features/home/view_model/cubit/app_states.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit(): super(AppInitialState());
  static AppCubit get(context)=>BlocProvider.of(context);
  List<UserModel> users= [];
  getData()async{
    emit(LoadingDataState());
    try{
    users = (await DioHelper.getData()).cast();
    emit(SuccessDataState(users));
    }catch (e){
      print(e.toString());
      emit(ErrorLoadingDataState(e.toString()));
    }
  }
}