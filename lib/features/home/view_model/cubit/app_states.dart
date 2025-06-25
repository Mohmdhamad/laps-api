import 'package:tasks/features/home/model/lapModel.dart';

abstract class AppStates{}
class AppInitialState extends AppStates{}
class LoadingDataState extends AppStates{}
class SuccessDataState extends AppStates{
  final List<ProductModel> list;
  SuccessDataState(this.list);
}
class ErrorLoadingDataState extends AppStates{
  final String error;
  ErrorLoadingDataState(this.error);
}
class ChangeImageState extends AppStates{}