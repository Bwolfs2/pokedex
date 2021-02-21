import 'package:flutter/material.dart';

class PkmButton extends StatelessWidget {
  final Color color;
  final Color borderColor;

  const PkmButton._({Key key, this.color, this.borderColor}) : super(key: key);

  factory PkmButton.select({Key key}) => PkmButton._(
        color: Color(0xffA51A17),
        borderColor: Color(0xffBC1F21),
      );

  factory PkmButton.start({Key key}) => PkmButton._(
        color: Color(0xff0F6594),
        borderColor: Color(0xff3B557B),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 37,
      height: 8,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(2),
          border: Border.all(
            width: 1,
            color: borderColor,
          )),
    );
  }
}
