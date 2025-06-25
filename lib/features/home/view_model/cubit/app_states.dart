import 'package:tasks/features/home/model/users_model.dart';

abstract class AppStates{}
class AppInitialState extends AppStates{}
class LoadingDataState extends AppStates{}
class SuccessDataState extends AppStates{
  final List<UserModel> list;
  SuccessDataState(this.list);
}
class ErrorLoadingDataState extends AppStates{
  final String error;
  ErrorLoadingDataState(this.error);
}