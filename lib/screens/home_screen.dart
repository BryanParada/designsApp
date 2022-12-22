import 'package:designs_app/widgets/background.dart';
import 'package:designs_app/widgets/page_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(//para widgets encima de otros
        children: [

          //BACKGROUND
          BackgroundW(),

          _HomeBody()


        ],
      )
    );
  }
}

class _HomeBody extends StatelessWidget { 

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(//si el hijo es mas grande que todas las dimensiones me permite hacer scroll
        child: Column(
          children: [
            //Titulos
            PageTitle(),
          ],
        ),
    );
  }
} 