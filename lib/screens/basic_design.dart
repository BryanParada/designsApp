import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Imagen
          Image(image: AssetImage('assets/img1.jpg')),


          //TItulo
          Title()
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( horizontal: 30, vertical: 10),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground', style: TextStyle( fontWeight: FontWeight.bold)),
              Text('kandersteg, Switzerland', style: TextStyle(color: Colors.black45)),
            ],
          ),

          //Expanded(child: Container( color: Colors.red, height: 10)), //para ver la separacion
          Expanded(child: Container( color: Colors.red, height: 10)),

          Icon( Icons.star, color: Colors.red),
          Text('41')
        ],
      ),
    );
  }
}