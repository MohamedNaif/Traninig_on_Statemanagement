import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:setstate_statemanagement/StateManagement/TaskB/cubit/show_hidepass_cubit.dart';

class ShowHidePass extends StatelessWidget {
  const ShowHidePass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(12),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          padding: const EdgeInsets.all(12),
          child: BlocBuilder<ShowHidepassCubit, ShowHidepassState>(
            builder: (context, state) {
              return TextField(
                obscureText: context.read<ShowHidepassCubit>().passObscure,
                decoration: InputDecoration(
                  suffix: context.read<ShowHidepassCubit>().passObscure == true
                      ? InkWell(
                          onTap: () => context
                              .read<ShowHidepassCubit>()
                              .showHidePassWord(),
                          child: Icon(Icons.visibility_off))
                      : InkWell(
                          onTap: () => context
                              .read<ShowHidepassCubit>()
                              .showHidePassWord(),
                          child: Icon(Icons.visibility)),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
