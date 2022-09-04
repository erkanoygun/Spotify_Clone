import 'package:flutter/material.dart';

class MySliverGrid extends StatelessWidget {
  const MySliverGrid({Key? key, required this.gridChildrenWidget}) : super(key: key);
  final List<Widget> gridChildrenWidget;
  final double crossAxisSpacing = 15;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisCount: 2,
      mainAxisSpacing: 0,
      crossAxisSpacing: crossAxisSpacing,
      childAspectRatio: 0.8,
      children: gridChildrenWidget,
    );
  }
}