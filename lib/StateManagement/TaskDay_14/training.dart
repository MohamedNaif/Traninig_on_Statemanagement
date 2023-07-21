import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:setstate_statemanagement/StateManagement/TaskDay_14/cubit/traniningstatemanagement_cubit.dart';

class Tranining extends StatelessWidget {
  const Tranining({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
              onTap: () {
                context.read<TraniningstatemanagementCubit>().onTapInit();
              },
              child: const Text("Enter the trainig")),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
              onTap: () {
                context.read<TraniningstatemanagementCubit>().onTapIn();
              },
              child: const Text("Exit the trainig")),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
              onTap: () {
                context.read<TraniningstatemanagementCubit>().onTapHold();
              },
              child: const Text("Hold the trainig")),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
              onTap: () {
                context.read<TraniningstatemanagementCubit>().onTapComment();
              },
              child: const Text("Enter the Comment")),
          const SizedBox(
            height: 180,
          ),
          Center(child: BlocBuilder<TraniningstatemanagementCubit,
              TraniningstatemanagementState>(
            builder: (context, state) {
              if (state is TraniningstatemanagementInitial) {
                return const Text("You didnt join the traing");
              } else if (state is TraniningstatemanagementIn) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(border: Border.all(width: 1)),
                      child: const Text(
                          "Today we will study state management using bloc and cubit"),
                    ),
                  ],
                );
              } else if (state is TraniningstatemanagementHold) {
                return Text("Hold");
              } else if (state is TraniningstatemanagementComment) {
                return const SizedBox(
                  width: 300,
                  child: TextField(),
                );
              } else {
                return const Text("No state");
              }
            },
          )),
        ],
      ),
    );
  }
}
