import 'package:flutter/material.dart';
import 'package:pokedex/screens/home/widgets/pickachu/pikachu.dart';
import 'dart:math' as math;

import 'package:pokedex/screens/home/widgets/sound_button/sound_button.dart';

class ScreenFrame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: FrameClipper(),
          child: Container(
            alignment: Alignment.topCenter,
            width: 288,
            height: 236,
            color: Color(0xffDAE8EB),
            padding: const EdgeInsets.only(top: 29),
            child: Column(
              children: [
                ClipPath(
                  clipper: ScreenClipper(),
                  child: Container(
                    width: 235,
                    height: 163,
                    color: Color(0xff777474),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          color: Color(0xffE51D20),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SoundButton()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(left: 40, child: Container(width: 200, height: 200, child: Image.asset('assets/gif/pi.gif')))
        // Positioned(
        //   bottom: 20,
        //   left: 0,
        //   right: 0,
        //   child: Pikachu(),
        // )
      ],
    );
  }
}

class ScreenClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var rectRightTop = Rect.fromCircle(center: Offset(size.width - 10, 10), radius: 10);
    var rectRightBottom = Rect.fromCircle(center: Offset(size.width - 10, size.height - 10), radius: 10);
    var rectLeftBottom = Rect.fromCircle(center: Offset(10, size.height - 10), radius: 10);
    var rectLeftTop = Rect.fromCircle(center: Offset(10, 10), radius: 10);

    var pathScreen = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width - 10, 0)
      ..arcTo(rectRightTop, -(math.pi / 2), math.pi / 2, false)
      ..lineTo(size.width, size.height)
      ..arcTo(rectRightBottom, 0, math.pi / 2, false)
      ..lineTo(10, size.height)
      ..arcTo(rectLeftBottom, math.pi / 2, math.pi / 2, false)
      ..lineTo(0, 10)
      ..arcTo(rectLeftTop, math.pi, math.pi / 2, false);

    return pathScreen;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => oldClipper != this;
}

class FrameClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var rectRightTop = Rect.fromCircle(center: Offset(size.width - 15, 15), radius: 15);
    var rectRightBottom = Rect.fromCircle(center: Offset(size.width - 15, size.height - 15), radius: 15);

    var rectLeftTop = Rect.fromCircle(center: Offset(15, 15), radius: 15);

    var pathScreen = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width - 15, 0)
      ..arcTo(rectRightTop, -(math.pi / 2), math.pi / 2, false)
      ..lineTo(size.width, size.height)
      ..arcTo(rectRightBottom, 0, math.pi / 2, false)
      ..lineTo(39, size.height)
      ..lineTo(0, size.height - 39)
      ..lineTo(0, 15)
      ..arcTo(rectLeftTop, math.pi, math.pi / 2, false);

    return pathScreen;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => oldClipper != this;
}
