import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/selected_radio_bttn_cubit.dart';

class RadioBttn extends StatelessWidget {
  const RadioBttn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(25),
        child: BlocBuilder<SelectedRadioBttnCubit, SelectedRadioBttnState>(
          builder: (context, state) {
            return ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return RadioListTile(
                  value: index,
                  groupValue: context.read<SelectedRadioBttnCubit>().initselect,
                  onChanged: (whatISelected) {
                    context
                        .read<SelectedRadioBttnCubit>()
                        .newSelected(whatISelected!);
                  },
                  title: Text("radio ${index + 1}"),
                  subtitle: Text("Radio button no. ${index + 1}"),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
