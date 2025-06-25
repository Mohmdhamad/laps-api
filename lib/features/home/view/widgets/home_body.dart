import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks/features/home/view/widgets/card_builder.dart';
import 'package:tasks/features/home/view_model/cubit/app_cubit.dart';
import 'package:tasks/features/home/view_model/cubit/app_states.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit,AppStates>(
      builder: (context,state){
        AppCubit cubit = AppCubit.get(context);
        if (state is LoadingDataState){
          return Center(child: CircularProgressIndicator(),);
        }else if (state is SuccessDataState){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15),
            child: Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                    crossAxisSpacing: 7,
                      mainAxisSpacing: 7,
                    ),
                    physics: BouncingScrollPhysics(),
                    itemCount: cubit.laps.length,
                    itemBuilder: (context,index){
                      return CardBuilder(model: cubit.laps[index]);
                    },
                  ),
                )
              ],
            ),
          );
        }
        return Container();

      },
    );
  }
}
