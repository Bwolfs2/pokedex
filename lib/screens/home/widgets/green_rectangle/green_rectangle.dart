import 'package:flutter/material.dart';

class GreenRectangle extends StatelessWidget {
  final Color color;
  final Color borderColor;

  const GreenRectangle._({Key key, this.color, this.borderColor}) : super(key: key);

  factory GreenRectangle({Key key}) => GreenRectangle._(
        key: key,
        color: Color(0xff49B15C),
        borderColor: Color(0xff5C743A),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 99,
      height: 54,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 1,
          color: borderColor,
        ),
      ),
    );
  }
}
