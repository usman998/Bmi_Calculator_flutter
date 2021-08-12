import 'package:flutter/material.dart';

class ResableCard extends StatelessWidget {
  ResableCard({this.colur, this.childCard, this.onPress});

  final Color colur;
  final Widget childCard;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colur,
          borderRadius: BorderRadius.circular(15),
        ),
        child: childCard,
      ),
    );
  }
}
