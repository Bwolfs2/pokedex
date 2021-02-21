import 'package:flutter/material.dart';
import 'package:pokedex/screens/home/widgets/lamp/lamp_widget.dart';
import 'package:pokedex/screens/home/widgets/small_lamps/lamps.dart';

class TopSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: TopSideShadowClipper(),
          clipBehavior: Clip.hardEdge,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 156,
            color: Color(0xffA51A17),
          ),
        ),
        ClipPath(
          clipper: TopSideClipper(),
          clipBehavior: Clip.hardEdge,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 144,
            color: Color(0xffCC1416),
          ),
        ),
        Positioned(
          left: 30,
          top: 30,
          child: LampWidget(),
        ),
        Positioned(
          left: 140,
          top: 20,
          child: Row(
            children: [
              Lamps.red(),
              SizedBox(
                width: 12,
              ),
              Lamps.green(),
              SizedBox(
                width: 12,
              ),
              Lamps.yellow(),
            ],
          ),
        )
      ],
    );
  }
}

class TopSideClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathScreen = Path()
          ..moveTo(0, 0)
          ..lineTo(0, size.height)
          ..lineTo(166, size.height)
          //..lineTo(166 + 67.0, size.height - 76)
          ..lineTo(166 + 58.0, 76)
          ..quadraticBezierTo(166 + 68.0, 67, 166 + 87.0, size.height - 76)

          //
          ..lineTo(size.width - 25, size.height - 76)
          ..lineTo(size.width - 25, size.height)
          ..lineTo(size.width, size.height)
          ..lineTo(size.width, 0)
        //
        ;

    return pathScreen;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => oldClipper != this;
}

class TopSideShadowClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var pathScreen = Path()
          ..moveTo(0, 0)
          ..lineTo(0, size.height)
          ..lineTo(176, size.height)
          ..lineTo(176 + 58.0, 84)
          //
          ..lineTo(size.width - 25, 84)
          ..lineTo(size.width - 25, size.height)
          ..lineTo(size.width, size.height)
          ..lineTo(size.width, 0)
        //
        ;

    return pathScreen;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => oldClipper != this;
}
