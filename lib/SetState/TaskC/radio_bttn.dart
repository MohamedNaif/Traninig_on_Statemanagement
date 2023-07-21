import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RadiobttnSetState extends StatefulWidget {
  const RadiobttnSetState({super.key});

  @override
  State<RadiobttnSetState> createState() => _RadiobttnSetStateState();
}

class _RadiobttnSetStateState extends State<RadiobttnSetState> {
  int newselected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return RadioListTile(
              value: index,
              groupValue: newselected,
              onChanged: (index) {
                setState(() {
                  newselected = index!;
                });
              },
              title: Text("radio ${index + 1}"),
              subtitle: Text("hello this is radio button no. ${index + 1}"),
            );
          },
          itemCount: 20,
        ),
      ),
    );
  }
}
