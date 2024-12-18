import 'package:flutter/material.dart';

class AdoptFilterWidget extends StatelessWidget {
  const AdoptFilterWidget({super.key});

  // blueLight: #91C9B9

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    double _cardWidth = size.width * 0.2;

    return SizedBox(
      height: 130,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildCardWiget(
            _cardWidth, 
            icon: const Icon(
              Icons.pets,
              color: Colors.white,
            ),
            title: "Dog",
          ),
          buildCardWiget(
            _cardWidth, 
            icon: const Icon(
              Icons.face,
              color: Colors.white,
              ),
            title: "Cat",
          ),
          buildCardWiget(
            _cardWidth, 
            icon: const Icon(
              Icons.flutter_dash,
              color: Colors.white,
              ),
            title: "Bird",
          ),
          buildCardWiget(
            _cardWidth, 
            icon: const Icon(
              Icons.set_meal,
              color: Colors.white,
              ),
            title: "Reptile",
          ),
        ],
      ),
    );
  }

  Widget buildCardWiget(
  double width,{
    required Icon icon,
    required String title,
    }
  ){
    return Container(
      width: width,
      height: 100,
      decoration: BoxDecoration(
        color: const Color(0xFF91C9B9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }


}