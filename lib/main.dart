import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:setstate_statemanagement/StateManagement/TaskA/cubit/task_a_cubit_cubit.dart';
import 'package:setstate_statemanagement/StateManagement/TaskB/cubit/show_hidepass_cubit.dart';

import 'SetState/TaskB/show_hide_pass.dart';
import 'SetState/TaskC/radio_bttn.dart';
import 'SetState/TaskDay_14/traninig_setState.dart';
import 'StateManagement/TaskA/fast_filter_bar.dart';
import 'StateManagement/TaskB/show_and_hide_pass.dart';
import 'StateManagement/TaskC/cubit/selected_radio_bttn_cubit.dart';
import 'StateManagement/TaskC/radio_bttn.dart';
import 'StateManagement/TaskDay_14/cubit/traniningstatemanagement_cubit.dart';
import 'StateManagement/TaskDay_14/training.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TaskACubitCubit>(
          create: (BuildContext context) => TaskACubitCubit(),
        ),
        BlocProvider<ShowHidepassCubit>(
          create: (BuildContext context) => ShowHidepassCubit(),
        ),
        BlocProvider<SelectedRadioBttnCubit>(
          create: (BuildContext context) => SelectedRadioBttnCubit(),
        ),
        BlocProvider<TraniningstatemanagementCubit>(
          create: (BuildContext context) => TraniningstatemanagementCubit(),
        )
      ],
      child: MaterialApp(
          home: Scaffold(
        body: TraninigSetState(),
      )),
    );
  }
}
