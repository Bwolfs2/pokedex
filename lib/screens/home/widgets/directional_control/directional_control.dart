import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DirectionControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 102,
      height: 102,
      alignment: Alignment.center,
      child: Column(
        children: [
          Row(
            children: [
              DirectionControlButton.empty(),
              DirectionControlButton.up(),
              DirectionControlButton.empty()
            ],
          ),
          Row(
            children: [
              DirectionControlButton.left(),
              DirectionControlButton(
                icon: Icons.circle,
                colors: [
                  Color(0xff444B4E),
                  Color(0xff272F31),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              DirectionControlButton.right()
            ],
          ),
          Row(
            children: [
              DirectionControlButton.empty(),
              DirectionControlButton.down(),
              DirectionControlButton.empty()
            ],
          )
        ],
      ),
    );
  }
}

class DirectionControlButton extends StatelessWidget {
  final IconData icon;
  final List<Color> colors;
  final Alignment begin;
  final Alignment end;

  const DirectionControlButton({Key key, @required this.icon, this.colors, this.begin, this.end}) : super(key: key);

  factory DirectionControlButton.left() => DirectionControlButton(
        icon: FontAwesomeIcons.caretLeft,
        colors: [
          Color(0xff535A5C),
          Color(0xff363D40),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      );

  factory DirectionControlButton.right() => DirectionControlButton(
      icon: FontAwesomeIcons.caretRight,
      colors: [
        Color(0xff353C3F),
        Color(0xff172022),
      ],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);

  factory DirectionControlButton.up() => DirectionControlButton(
        icon: FontAwesomeIcons.caretUp,
        colors: [
          Color(0xff53595C),
          Color(0xff363D40),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      );

  factory DirectionControlButton.down() => DirectionControlButton(
        icon: FontAwesomeIcons.caretDown,
        colors: [
          Color(0xff353D3F),
          Color(0xff182022),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      );

  factory DirectionControlButton.empty() => DirectionControlButton(icon: null);

  @override
  Widget build(BuildContext context) {
    if (icon == null) {
      return Container(
        width: 34,
        height: 34,
        color: Colors.transparent,
      );
    }
    return Container(
      width: 34,
      height: 34,
      child: icon != null ? Icon(icon) : null,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: begin,
          end: end,
        ),
      ),
    );
  }
}
