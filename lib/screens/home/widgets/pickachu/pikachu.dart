import 'package:flutter/material.dart';

class Pikachu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        alignment: Alignment.center,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                width: 84,
                height: 66,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.elliptical(84, 66)),
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                  ),
                ),
                child: Container(
                  width: 80,
                  child: Row(
                    children: [
                      Olho.left(),
                      Olho.rigth()
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Orelhas(),
            )
          ],
        ),
      ),
    );
  }
}

class Olho extends StatelessWidget {
  final bool left;

  const Olho._({Key key, this.left}) : super(key: key);

  factory Olho.left() => Olho._(left: true);
  factory Olho.rigth() => Olho._(left: false);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 15,
      height: 15,
      alignment: left ? Alignment.topRight : Alignment.topLeft,
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: CircleAvatar(
          radius: 3.5,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}

class Orelhas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CabecaClip(),
      child: Container(
        width: 52.37,
        height: 48.55,
        color: Colors.black,
      ),
    );
  }
}

class CabecaClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
          ..moveTo(0, size.height)
          ..quadraticBezierTo(size.width, 0, size.width / 2 - 5, size.height / 2 - 5)
          ..quadraticBezierTo(0, size.height, size.width / 2 + 5, size.height / 2 + 5)
        //
        ;

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => oldClipper != this;
}
