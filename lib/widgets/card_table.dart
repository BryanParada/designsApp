import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children:[
            _SingleCard(icon: Icons.border_all, color: Colors.blue, text: 'General'),
            _SingleCard(icon: Icons.card_giftcard, color: Colors.pinkAccent, text: 'Rental'),
          ] 
        ),
         TableRow(
          children:[
            _SingleCard(icon: Icons.shop, color: Colors.purple, text: 'Shop'),
            _SingleCard(icon: Icons.dock, color: Colors.green, text: 'Dock'),
          ] 
        ),
         TableRow(
          children:[
            _SingleCard(icon: Icons.border_all, color: Colors.blue, text: 'General'),
            _SingleCard(icon: Icons.card_giftcard, color: Colors.pinkAccent, text: 'Rental'),
          ] 
        ),
                 TableRow(
          children:[
            _SingleCard(icon: Icons.border_all, color: Colors.blue, text: 'General'),
            _SingleCard(icon: Icons.card_giftcard, color: Colors.pinkAccent, text: 'Rental'),
          ] 
        ),
                 TableRow(
          children:[
            _SingleCard(icon: Icons.border_all, color: Colors.blue, text: 'General'),
            _SingleCard(icon: Icons.card_giftcard, color: Colors.pinkAccent, text: 'Rental'),
          ] 
        ),
                 TableRow(
          children:[
            _SingleCard(icon: Icons.border_all, color: Colors.blue, text: 'General'),
            _SingleCard(icon: Icons.card_giftcard, color: Colors.pinkAccent, text: 'Rental'),
          ] 
        ),
        
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    super.key,
    required this.icon,
    required this.color,
    required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            child: Icon(this.icon),
            radius: 30,
          ),
          SizedBox(height: 10,),
          Text(this.text, style: TextStyle(color: this.color, fontSize: 18))
            
        ],
      ),
    );
  }
}