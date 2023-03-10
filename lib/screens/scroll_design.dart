import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
 
  final boxDecoration = BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5,0.5],
            colors: [
              Color(0xff5EE8C5),
              Color(0xff30BAD6)
            ]
          )
        );
  
  @override
  Widget build(BuildContext context) {
 
    return  Scaffold(
      //backgroundColor: Color(0xff30BAD6),
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Page1(),
            Page2(), 
          ],
        ),
      )
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //background image
        Background(),

        MainContent()
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var textStyle = TextStyle( fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50,),
          Text('11°', style: textStyle),
          Text('Miércoles', style: textStyle),
          Expanded(child: Container( )), //color: Colors.red
          //TODO: expanded
          Icon( Icons.keyboard_arrow_down, size: 100, color: Colors.white), 
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image(image: AssetImage('assets/scroll-1.png'))
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Text('Bienvenido', style: TextStyle(color: Colors.white, fontSize: 50)),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098FA),
            shape: StadiumBorder()
          ),
        ),
      ),
    );
  }
}