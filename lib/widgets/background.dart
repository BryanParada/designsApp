import 'dart:math';

import 'package:flutter/material.dart';

class BackgroundW extends StatelessWidget {
  const BackgroundW({super.key});

  @override
  Widget build(BuildContext context) {

    final boxDecoration = BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8],
          colors: [
            Color(0xff2E305F),
            Color(0Xff202333)
          ]
        )
      );

    return Stack(
      children: [
        //Purple Gradient
        Container(decoration: boxDecoration,),

        //Pink box
        Positioned(
          top: -100,
          left: -30,
          child: _PinkBox(),
        )
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({super.key});

  @override
  Widget build(BuildContext context) {

MediaQueryData deviceInfo = MediaQuery.of(context);

    return Transform.rotate(
      angle: -pi / 3.5,
      child: Container(
        //width: 360,
        //height: 360,
         width: deviceInfo.orientation == Orientation.portrait?  deviceInfo.size.height * 0.40: deviceInfo.size.width * 0.40,
         height: deviceInfo.orientation == Orientation.portrait?  deviceInfo.size.height * 0.40: deviceInfo.size.width * 0.40,
        //color: Colors.pink, //se debe utilizar color dentro de BoxDecoration v
        decoration: BoxDecoration(
          //color: Colors.pink,
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1)
            ])
          ),
      ),
    );
  }
}