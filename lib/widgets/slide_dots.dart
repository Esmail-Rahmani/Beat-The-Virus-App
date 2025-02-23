import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget {
  bool isActive;
  SlideDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: isActive ? 8 : 5,
      width: isActive ? 8 : 5,
      decoration: BoxDecoration(
        color: isActive ? Theme.of(context).primaryColor : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    );
  }
}