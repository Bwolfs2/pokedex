import 'package:flutter/material.dart';

import 'widgets/directional_control/directional_control.dart';
import 'widgets/frame/screen_frame.dart';
import 'widgets/green_rectangle/analogic_control.dart';
import 'widgets/green_rectangle/green_rectangle.dart';
import 'widgets/pkm_button/pkm_button.dart';
import 'widgets/top_side/top_side.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE51D20),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 28,
              ),
              TopSide(),
              SizedBox(
                height: 49,
              ),
              ScreenFrame(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: AnalogicControl(),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PkmButton.select(),
                            SizedBox(
                              width: 40,
                            ),
                            PkmButton.start(),
                          ],
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        GreenRectangle(),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: DirectionControl(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              width: 34,
              height: MediaQuery.of(context).size.height - 96,
              decoration: BoxDecoration(
                color: Color(0xffCC1416),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
