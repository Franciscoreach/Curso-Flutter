import 'package:flutter/material.dart';

// backgroundColor: #DBE8DF
// orange: #EE6D2D
// brown: #3C2F20
// brownLight: #8E8E81

class AdoptAppbarWidget extends StatelessWidget {
  const AdoptAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: const EdgeInsets.only(
        top: 50,
        left: 15,
        right: 15,
        bottom: 16
      ),
      color: const Color(0xFFDBE8DF),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              //Avatar
          CircleAvatar(
            backgroundColor: Color(0xFFEE6D2D),
            radius: 30,
          ),
          SizedBox(width: 16),
          //Título
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ora Brock", 
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 22,
                  color: Color(0xFF3C2F20)
                ),
              ),
              Text(
                "Volunteer in pet shelter", 
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: Color(0xFF3C2F20)
                ),
              ),
              Text(
                "2 adoptions", 
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 9,
                  color: Color(0xFF8E8E81)
                ),
              ),
            ],
          ),
            ],
          ),
          //Icono
          Icon(
            Icons.menu,
            color: Color(0xFFEE6D2D),
          ),
        ],
      ),
    );
  }
}


