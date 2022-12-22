import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {

    MediaQueryData deviceInfo = MediaQuery.of(context);

    return SafeArea(
      bottom:false,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Classify transaction', style: TextStyle(
              //fontSize: 20,
              fontSize: deviceInfo.orientation == Orientation.portrait?  deviceInfo.size.height * 0.030: deviceInfo.size.width * 0.030,
              fontWeight: FontWeight.bold,
              color: Colors.white)),
            SizedBox(height: 10,),
            Text('Classify this transaction into a particular category',style: TextStyle(
              fontSize: deviceInfo.orientation == Orientation.portrait?  deviceInfo.size.height * 0.015: deviceInfo.size.width * 0.015,
              fontWeight: FontWeight.bold,
              color: Colors.white)),
          ],
        ),
      ),
    );
  }
}