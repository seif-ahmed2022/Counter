import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../cubit/cubit.dart';
import '../cubit/states.dart';
import '../shared/local/component.dart';

class CounterScreen extends StatelessWidget {
  //const CounterScreen({Key? key}) : super(key: key);
int number=0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {},
        builder: (context, state) =>Scaffold(
          body: SafeArea(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyWidgets.myButton(
                    width: 100,
                    height: 60,
                    radius: 30,
                    color: Colors.blueAccent,
                    text: const Text("minus"),
                    icon: const Icon(Icons.remove),
                    onTap: (){
                      number--;
                      CounterCubit.get(context).changeNumber();
                    },
                  ),
                  const SizedBox(width: 50.0,),
                  Text("$number",style:const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),),
                  const SizedBox(width: 50.0,),
                  MyWidgets.myButton(
                    width: 100,
                    height: 60,
                    radius: 30,
                    color: Colors.red,
                    text: const Text("Add"),
                    icon: const Icon(Icons.add),
                    onTap: (){
                      number++;
                      CounterCubit.get(context).changeNumber();
                    },

                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      );
  }
}
