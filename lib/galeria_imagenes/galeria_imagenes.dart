import 'package:flutter/material.dart';

class GaleriaImagenes extends StatefulWidget {
  const GaleriaImagenes({super.key});

  @override
  State<GaleriaImagenes> createState() => _GaleriaImagenesState();
}

class _GaleriaImagenesState extends State<GaleriaImagenes> {
  final List<String> imgUrls = [
    "https://placecats.com/300/201",
    "https://placecats.com/300/202",
    "https://placecats.com/300/204",
    "https://placecats.com/300/205",
    "https://placecats.com/300/207"
  ];

  addImage() {
    //imgUrls.add("https://placecats.com/300/${lastIndex + 1}");
    int lastIndex = int.parse(imgUrls.last.split("/")[4]);
    setState(() {
      imgUrls.add("https://placecats.com/300/${lastIndex + 1}");
    });

    //print(imgUrls.length);
    //print(imgUrls.last);
  }

  int columnNumber = 2; 

  showImage(String imgUrl) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Container(
            width: 400,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: NetworkImage(imgUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF275846),
      body: Column(
        children: [
          //const SafeArea(child: SizedBox.shrink()),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 19,
            ),
            child: headerSection(context),
          ),
          const SizedBox(height: 26),
          Padding(padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: SizedBox(
            width: size.width,
            child: textSection()
            ),
          ),
          const SizedBox(height: 36),
          bodySection(),
        ],
      ),
    );
  }

Widget headerSection(BuildContext context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          width: 40,
          height: 48,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white38
            ),
            borderRadius: BorderRadius.circular(14),
          ),
          child: const Padding(
            padding: EdgeInsets.only(left:10),
            child: Icon(
              Icons.arrow_back_ios, 
              size: 22,
              color: Colors.white70,
            ),
          ),
        ),
      ),
      GestureDetector(
          onTap: addImage,
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }

Widget textSection(){
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Image Gallery",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w600,
        ),
      ),
      Text(
      "Created 2 days ago",
      style: TextStyle(
        color: Colors.white60,
        fontSize: 14,
        ),
      ),
    ],
  );
}

Widget bodySection() {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(36),
            topRight: Radius.circular(36),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Recently Added",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.grid_view),
                      onPressed: () {
                        setState(() {
                          columnNumber = 2;
                        });
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.grid_3x3),
                      onPressed: () {
                        setState(() {
                          columnNumber = 3;
                        });
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.grid_4x4),
                      onPressed: () {
                        setState(() {
                          columnNumber = 4;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columnNumber, //Modificar grilla con columnNumber
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: imgUrls.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => showImage(imgUrls[index]),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36),
                        image: DecorationImage(
                          image: NetworkImage(imgUrls[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }




}




//Verde: 275846

//Mini App de Imagenes

//Ejercicio 1:

// -Botón(UI a elección) agregar nueva imagen ---------------------------------------- OK
//-Agregar las imagenes (que sean visibles) ------------------------------------------ OK
//-Que las imagenes tengan el borde redondeado --------------------------------------- OK
//-Que aparezca en la galeria, la imagen agregada desde el boton del Appbar----------- OK

//Ejercicio 2:

// -Modificar la cantidad de elementos en la grilla -----------------------------------OK
// -Ver la imagen (que se haga click)  ------------------------------------------------OK
// -Dialog, navigator (Fullscreen)     ------------------------------------------------OK


