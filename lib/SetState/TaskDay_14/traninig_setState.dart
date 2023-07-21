import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TraninigSetState extends StatefulWidget {
  const TraninigSetState({super.key});

  @override
  State<TraninigSetState> createState() => _TraninigSetStateState();
}

class _TraninigSetStateState extends State<TraninigSetState> {
  bool inTrainig = false;
  // List<String> training = ["welcome", "Hello", "set state"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 100,
            ),
            Center(
                child: inTrainig == false
                    ?

                    /// ternary operator

                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            inTrainig = !inTrainig;
                          });
                        },
                        child: Text("Lets train"))
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration:
                                BoxDecoration(border: Border.all(width: 1)),
                            child: Text("Training on Set State"),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  inTrainig = !inTrainig;
                                });
                              },
                              child: Text("Finish training"))
                        ],
                      )),
            // for (int i = 0; i < training.length; i++) Text(training[i])
          ],
        ),
      ),
    );
  }
}
