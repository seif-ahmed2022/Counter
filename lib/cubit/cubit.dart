import 'package:counter/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit( ) : super(CounterInitialState());

  static CounterCubit get(BuildContext context) => BlocProvider.of(context);

  void changeNumber(){
    emit(ChangeNumberState());
    }

}