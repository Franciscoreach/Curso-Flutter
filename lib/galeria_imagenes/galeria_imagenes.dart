import 'package:flutter/material.dart';

class GaleriaImagenes extends StatelessWidget {
  const GaleriaImagenes({super.key});

  // final List<String> imgUrls = [
  //   "https://placecats.com/300/200",
  //   "https://placecats.com/300/200",
  //   "https://placecats.com/300/200",
  //   "https://placecats.com/300/200",
  //   "https://placecats.com/300/200"
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Galeria de imagenes"),
      ),
      body: Center(
        child: Image.network("https://placecats.com/300/204"),
      ),
    );
  }
}


//Mini App de Imagenes
// -Grid-Mosaico de imagenes (n)
// -Ver la imagen (que se haga click)
// -Modificar la cantidad de elementos en la grilla
// -Botón(UI a elección) agregar nueva imagen