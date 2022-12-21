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
          Title(),


          //button section
          ButtonSection(),

          //Descripcion
          Container(
            margin: EdgeInsets.symmetric( horizontal: 20, vertical: 10),
            child: Text('Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem ')
            )


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
          Expanded(child: Container( )),

          Icon( Icons.star, color: Colors.red),
          Text('41')
        ],
      ),
    );
  }
}


class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60, vertical:40),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            
              CustomButton(icon: Icons.call, text: 'Call',),
              CustomButton(icon: Icons.navigation_rounded, text: 'Route',),
              CustomButton(icon: Icons.share, text: 'Share'),
              
      
            ],
          ), 
        );
    }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon( icon, color: Colors.blue, size:30),
        Text(text, style: TextStyle(color: Colors.blue),)
      ],
    );
  }
}
