import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:setstate_statemanagement/StateManagement/TaskA/cubit/task_a_cubit_cubit.dart';

class FastFilterBar extends StatelessWidget {
  FastFilterBar({super.key});

  List<String> filterName = [
    "قيد التنفيذ",
    "الملغية",
    "تمت",
    "تحت المراجعة",
    "المكتملة"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: BlocBuilder<TaskACubitCubit, TaskACubitState>(
            builder: (context, state) {
              return Row(
                children: [
                  ...filterName.asMap().entries.map((e) {
                    return InkWell(
                      onTap: () => context
                          .read<TaskACubitCubit>()
                          .selectFilterBAr(e.key),
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        margin: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: context.read<TaskACubitCubit>().index == e.key
                              ? Color.fromARGB(255, 92, 90, 229)
                              : Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Text(e.value),
                      ),
                    );
                  }),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
