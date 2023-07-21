import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ShowHidePassword extends StatefulWidget {
  const ShowHidePassword({super.key});

  @override
  State<ShowHidePassword> createState() => _ShowHidePasswordState();
}

class _ShowHidePasswordState extends State<ShowHidePassword> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            obscureText: obscure,
            decoration: InputDecoration(
              suffix: obscure == true
                  ? InkWell(
                      onTap: () => setState(() {
                            obscure = !obscure;
                          }),
                      child: Icon(Icons.visibility_off))
                  : InkWell(
                      onTap: () => setState(() {
                            obscure = !obscure;
                          }),
                      child: Icon(Icons.visibility)),
            ),
          ),
        ),
      ),
    );
  }
}
