import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FastFilterBar extends StatefulWidget {
  FastFilterBar({super.key});

  @override
  State<FastFilterBar> createState() => _FastFilterBarState();
}

class _FastFilterBarState extends State<FastFilterBar> {
  List<String> filterName = [
    "قيد التنفيذ",
    "الملغية",
    "تمت",
    "تحت المراجعة",
    "المكتملة"
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...filterName.asMap().entries.map((e) {
                return InkWell(
                  onTap: () => setState(() {
                    index = e.key;
                  }),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: index == e.key
                          ? const Color.fromARGB(255, 92, 90, 229)
                          : Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(e.value),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
