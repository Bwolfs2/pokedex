import 'package:flutter/material.dart';

class LampWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 88,
      height: 88,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color(0xffD9E8EB),
        shape: BoxShape.circle,
      ),
      child: Container(
        width: 68,
        height: 68,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Color(0xffD9E8EB),
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [
              Color(0xff3BC4FA),
              Color(0xff1778D5),
            ],
            focal: Alignment.center,
            focalRadius: .35,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 20,
              child: Container(
                width: 14,
                height: 14,
                decoration: BoxDecoration(
                  color: Color(0xffD9E8EB),
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      Color(0xffFFFFFF),
                      Color(0xff3AC2F9),
                    ],
                    focal: Alignment.center,
                    focalRadius: .1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
