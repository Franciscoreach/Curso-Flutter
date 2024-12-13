import 'package:flutter/material.dart';
import 'package:mi_primera_app/audio_player/audio_player2_5.dart';

class AudioPlayer25 extends StatefulWidget {
  const AudioPlayer25({super.key});

  @override
  State<AudioPlayer25> createState() => _AudioPlayer25State();
}

class _AudioPlayer25State extends State<AudioPlayer25> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    double heightAppBar = size.height * .15;
    double heightAlbum = size.height * .65;
    double heightContinue = size.height * .2;
    

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 25, 23, 23), 
      body: Column(
        children: [
          AppBarPlayer(
            height: heightAppBar,
          ),
          AlbumPlayer(
            height: heightAlbum,
          ),
          ContinueWatching(
            height: heightContinue,
          ),
        ],
      ),
    );
  }
}

class AppBarPlayer extends StatelessWidget {
  final double height;

  const AppBarPlayer({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      color: const Color.fromARGB(255, 25, 23, 23), 
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Foto de usuario y nombre
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("assets/img/profile.jpg"),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Happy Watching!",
                          style: TextStyle(
                            color: Color.fromARGB(137, 231, 230, 230),
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              "Francisco Clavería",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                              Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                // Row de Iconos
                Row(
                  children: [
                    // Primer Icono
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 110, 108, 108),
                          width: 0.8,
                        ),
                        shape: BoxShape.circle, 
                      ),
                      child: const Icon(
                        Icons.search_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 15),
                    // Segundo Icono
                    Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 110, 108, 108),
                          width: 0.8,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AlbumPlayer extends StatelessWidget {
  final double height;
  const AlbumPlayer({super.key, required this.height});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
    width: double.infinity,
    height: height,
    color: const Color.fromARGB(255, 25, 23, 23), 
    child: Stack(
      children: [
        //Filtros - 90
        Container(
          width: size.width,
          height: 90,
          //color: Colors.redAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                    width: 2.0,          
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  "All",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                "Series",
                style: TextStyle(
                  color: Color.fromARGB(255, 202, 194, 194),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Movie",
                style: TextStyle(
                  color: Color.fromARGB(255, 202, 194, 194),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "TV Show",
                style: TextStyle(
                  color: Color.fromARGB(255, 202, 194, 194),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        //Carrusell
        Positioned(
          top: 90,
          child: Container(
            width: size.width,
            height: height - 140,
            child: carruselImages(context),
          ),
        ),
        Positioned(
        top: 300,
        bottom: 100,
        left: 50,
        right: 50,
        child: Container(
          color: Colors.transparent,
          width: size.width,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Time to Explore",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Spacer(),
              // Primer icono 
              Stack(
                alignment: Alignment.center,
                children: [
                  Icon(
                    Icons.play_circle_fill_outlined,
                    color: Colors.redAccent,
                    size: 50,
                  ),
                  Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(width: 10),
              // Segundo icono
              Icon(
                Icons.add_circle_rounded,
                color: Colors.redAccent,
                size: 50,
              ),
            ],
          ),
        ),
      ),
        //Slider Point - 40
        Positioned(
          bottom: 10,
          left: size.width * .25,
          right: size.width * .25,
          child: SizedBox(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                points(true),
                points(true),
                points(true),
                points(false),
                points(true),
                points(true),
                points(true),
              ],
            ),
          ),
        ),
      ],
    ),
  );
  }

  Widget points(bool isCircle) {
    return Container(
      width: isCircle ? 10 : 48,
      height: 10,
      decoration: BoxDecoration(
        color: isCircle ? Colors.grey[800] : Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }


  Widget carruselImages(context){
    return Container(
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 8,
      ),
      child: Stack(
        children: [
          // Imagen 1 Left
          Positioned(
            top: 30,
            bottom: 0,
            left: -100,
            child: Transform.rotate(
              angle: -.10,
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                //color: Colors.white38,
                image: const DecorationImage(
                  image: AssetImage("assets/img/ado3.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(22),
              ),
            ),
            ),
          ),
          // Imagen 2 Right
          Positioned(
            top: 30,
            bottom: 0,
            right: -100,
            child: Transform.rotate(
              angle: .10,
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                //color: Colors.white70,
                image: const DecorationImage(
                  image: AssetImage("assets/img/ado2.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(22),
              ),
            ),
          ),
          ),
          // Imagen 3 Center
          Positioned(
            top: 0,
            bottom: 30,
            left: 45,
            right: 45,
            child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AudioPlayer251()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/img/ado.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(22),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

}

class ContinueWatching extends StatelessWidget {
  final double height;
  const ContinueWatching({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      color:  const Color.fromARGB(255, 25, 23, 23), 
      child: Stack(
        children: [
          //Texto
          Positioned(
            top: 10,
            bottom: 110,
            left: 15,
            right: 170,
            child: Container(
              width: 200,
              child: const Row(
                children: [
                  Icon(
                    Icons.play_arrow,
                    color: Colors.red,
                  ),
                  Text(
                  "Continue watching",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ],
              ),
            ),
          ),
          //Imagen1
          Positioned(
            top: 50,
            bottom: 0,
            left: 15,
            right: 180,
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                //color: Colors.white,
                image: const DecorationImage(
                  image: AssetImage("assets/img/ado5.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(22),
              ),
            ),
          ),
          //Imagen2
          Positioned(
            top: 50,
            bottom: 0,
            left: 250,
            right: -15,
            child: Container(
              width: 200,
                decoration: BoxDecoration(
                  //color: Colors.red,
                  image: const DecorationImage(
                  image: AssetImage("assets/img/ado4.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(22),
              ),
            ),
          ),
          //AppbarAbajo
          Positioned(
          top: 100,
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            width: 200,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Primer ícono con texto
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.home_filled,
                      color: Colors.white,
                      size: 25,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                // Segundo ícono con texto
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 25,
                    ),
                    Text(
                      "New",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                // Tercer ícono con texto
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.list,
                      color: Colors.white,
                      size: 25,
                    ),
                    Text(
                      "List",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                // Cuarto ícono con texto
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.download,
                      color: Colors.white,
                      size: 25,
                    ),
                    Text(
                      "Download",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        ],
      ),
    );
  }



}