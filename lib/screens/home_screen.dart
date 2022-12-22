import 'package:designs_app/widgets/background.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(//para widgets encima de otros
        children: [

          //BACKGROUND
          BackgroundW()


        ],
      )
    );
  }
}