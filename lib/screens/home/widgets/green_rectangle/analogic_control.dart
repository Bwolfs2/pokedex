import 'package:flutter/material.dart';

class AnalogicControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58,
      height: 58,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black),
        gradient: LinearGradient(
          colors: [
            Color(0xff686D70),
            Color(0xff050F11),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        shape: BoxShape.circle,
      ),
      child: Container(
        width: 47,
        height: 47,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff686D70),
              Color(0xff050F11),
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          shape: BoxShape.circle,
        ),
        child: Container(
          width: 43,
          height: 43,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
            gradient: LinearGradient(
              colors: [
                Color(0xff686D70),
                Color(0xff050F11),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
