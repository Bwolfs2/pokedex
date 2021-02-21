import 'package:flutter/material.dart';

class Lamps extends StatefulWidget {
  final Color color1;
  final Color color2;

  const Lamps._({Key key, this.color1, this.color2}) : super(key: key);

  factory Lamps.red({Key key}) => Lamps._(
        color1: Color(0xffFF9282),
        color2: Color(0xffE0433F),
      );
  factory Lamps.yellow({Key key}) => Lamps._(
        color1: Color(0xffFEDB6A),
        color2: Color(0xffFABE17),
      );
  factory Lamps.green({Key key}) => Lamps._(
        color1: Color(0xffBDEAA7),
        color2: Color(0xff52C153),
      );
  @override
  _LampsState createState() => _LampsState();
}

class _LampsState extends State<Lamps> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black26,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(12),
        gradient: RadialGradient(
          colors: [
            Colors.white,
            widget.color1,
            widget.color2
          ],
        ),
      ),
    );
  }
}
