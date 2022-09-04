import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  const MyIconButton({Key? key,required this.icon,required this.tabFunction,required this.size,this.iconColor}) : super(key: key);
  final IconData icon;
  final Function tabFunction;
  final double size;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: size,
      onPressed: () => tabFunction,
      icon: Icon(icon),
      color: iconColor,
    );
  }
}