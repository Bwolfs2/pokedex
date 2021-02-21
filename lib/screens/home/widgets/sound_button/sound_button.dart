import 'package:flutter/material.dart';

class SoundButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 23.55,
      height: 23.56,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff7B8287),
            Color(0xff324144),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      alignment: Alignment.center,
      child: Container(
        width: 19.93,
        height: 19.93,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff4A494E),
              Color(0xff525157),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        alignment: Alignment.center,
        child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xff182022),
          ),
        ),
      ),
    );
  }
}
