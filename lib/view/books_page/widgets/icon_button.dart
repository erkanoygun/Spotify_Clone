import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({Key? key,required this.icon,required this.tabFunction}) : super(key: key);
  final IconData icon;
  final Function tabFunction;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => tabFunction,
      icon: Icon(icon),
    );
  }
}