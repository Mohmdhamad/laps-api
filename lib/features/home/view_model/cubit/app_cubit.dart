import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks/features/home/data/data.dart';
import 'package:tasks/features/home/model/lapModel.dart';
import 'package:tasks/features/home/view_model/cubit/app_states.dart';

class AppCubit extends Cubit<AppStates>{
  AppCubit(): super(AppInitialState());
  static AppCubit get(context)=>BlocProvider.of(context);
  List<ProductModel> laps= [];
  getData()async{
    emit(LoadingDataState());
    try{
      List list = await LapData.getData();
      laps = list.cast();
    emit(SuccessDataState(laps));
    }catch (e){
      print(e.toString());
      emit(ErrorLoadingDataState(e.toString()));
    }
  }
}