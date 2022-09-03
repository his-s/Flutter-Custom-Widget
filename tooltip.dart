import 'dart:math';

import 'package:flutter/material.dart';

class CustomTooltip extends StatelessWidget {
  const CustomTooltip(
      {Key? key,
      this.margin = const EdgeInsets.all(0),
      this.padding = const EdgeInsets.all(0),
      this.height = 30,
      this.width = 120,
      this.tooltipColor = Colors.grey,
      this.handSize = 15,
      required this.child})
      : super(key: key);
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final double height;
  final double width;
  final Color tooltipColor;
  final double handSize;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Stack(
        alignment: Alignment.centerRight,
        clipBehavior: Clip.none,
        children: [
          Container(
            width: width,
            height: height,
            padding: EdgeInsets.symmetric(horizontal: handSize / 2),
            child: child,
            decoration: BoxDecoration(
              color: tooltipColor,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Positioned(
            right: -5,
            child: Transform.rotate(
              angle: -pi / 4,
              child: Container(
                width: handSize,
                height: handSize,
                decoration: BoxDecoration(
                  color: tooltipColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
