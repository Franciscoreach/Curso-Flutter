import 'package:flutter/material.dart';

class AudioPlayer251 extends StatefulWidget {
  const AudioPlayer251({super.key});

  @override
  State<AudioPlayer251> createState() => _AudioPlayer251State();
}

class _AudioPlayer251State extends State<AudioPlayer251> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;


    double heightAppBarMovie = size.height * .15;
    double heightMoviePlayer = size.height * .60;
    double heightMovieDescription = size.height * .25;


    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 23, 23), 
      body: Column(
        children: [
          AppBarMovie(
            height: heightAppBarMovie,
          ),
          MoviePlayer(
            height: heightMoviePlayer,
          ),
          MovieDescription(
            height: heightMovieDescription,
          ),
        ],
      ),
    );
  }
}

  class AppBarMovie extends StatelessWidget {
  final double height;

  const AppBarMovie({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      color: const Color.fromARGB(255, 25, 23, 23), 
      child: Column(
        children: [
          //Bajando los Iconos - Appbar
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 110, 108, 108),
                      width: 0.8,
                    ),
                    shape: BoxShape.circle, 
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_rounded),
                    color: Colors.white,
                    iconSize: 24,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0), 
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 110, 108, 108),
                          width: 0.8,
                        ),
                        shape: BoxShape.circle, 
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.turned_in_not_rounded),
                        color: Colors.white,
                        iconSize: 24, 
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 110, 108, 108),
                          width: 0.8,
                        ),
                        shape: BoxShape.circle, 
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.share),
                        color: Colors.white,
                        iconSize: 24,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, left: 4.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 110, 108, 108),
                          width: 0.8,
                        ),
                        shape: BoxShape.circle, 
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.download_for_offline_rounded),
                        color: Colors.white,
                        iconSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


  class MoviePlayer extends StatelessWidget {
  final double height;

  const MoviePlayer({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      color: const Color.fromARGB(255, 25, 23, 23), 
      child: Stack(
        children: [
          Positioned(
            top: 10,
            bottom: 10,
            left: 20,
            right: 20,
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                image: const DecorationImage(
                  image: AssetImage("assets/img/ado.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
          top: 315,
          bottom: 50,
          left: 40,
          right: 40,
          child: Container(
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.play_arrow_sharp,
                    color: Colors.orangeAccent,
                    size: 30,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Play S1,E1',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        ],
      ),
    );
  }
}






  class MovieDescription extends StatelessWidget {
  final double height;
  
  const MovieDescription({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      color: const Color.fromARGB(255, 25, 23, 23), 
      child: const Stack(
      children: [
        Positioned(
          top: -10,
          bottom: 15,
          left: 25,
          right: 25,
          child: SizedBox(
            width: 200,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Time to Explore",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Epic fantasy series that takes viewers on a thrilling journey through a real of magic, mythical creatures and ancient prophecies.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Cast: Liam,Ava,Benjamin,Olivia,Mason,Benjamin. ",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(137, 231, 230, 230),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
    );
  }
}