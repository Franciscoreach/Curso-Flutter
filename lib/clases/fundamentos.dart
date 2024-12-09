void main(){
  //print("Hola Mundo");

  //variables();
  //listasYmapa();
  //operadores();
  //control();

  //saludar("Francisco", "Apellido");
  //saludar0("Francisco0");
  //saludar2(nombre: "Francisco2", apellido: "Apellido");
  //saludar3(nombre: "Francisco3", apellido: "Apellido");

  //Alumns alumno = Alumns (name: "A", id: 1);
  //print(alumno.name)

  obtenerClima();

}

class Animal{
  void sonido() => print("Hacer un sonido");
}

class Perro extends Animal{
  void sonido() => print("Ladrar");
}

class Gato extends Animal{
  void sonido() => print("Maullar");
}

void variables(){
  var ciudad = "Santiago";
  var temp = 38.0;

  int edad = 90;
  double altura = 75.2;
  bool esEstudiante = true;
  String nombre = "Francisco";


  // Si tiene "guíon bajo" es una variable privada
  //String _nombre = "Francisco";

  print(ciudad);
  print(edad);
  print(altura);
  print(esEstudiante);
  print(nombre);

}

void listasYmapa(){
  List<String> comidas = ["Fideos","Arroz","Pure"];
  Map<String,int> alumnos = {
    "Loreto": 1,
    "Rodrigo": 2,
  };
}

void operadores(){
  int a = 10;
  int b = 3;
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b);

  print(a > b);
  print(a <= b);
  print(a == b);
  print(a != b);
}

void control(){
  int edad = 18;
  if(edad > 18){
    print("mayor de edad");
  } else{
    print("menor de edad");
  }

  String diaSemana = "Martes";
  //Switch
  switch(diaSemana){
    case "Lunes":
      print("Es Lunes");
      break;
    case "Martes":
      print("Es Martes");
      break;
    default:
      print("Otro dia x");
  }

  //for, for in, while

  for(int i = 1; i <=5; i++){
    print("numero: $i");
  }

  for(var element in [1,2,3,4]){
    print("numero: $element");
  }

  int count = 1;
  while (count <= 5){
    print("contador: $count");
    count++;
  }

}

void saludar(String nombre, [String apellido = ""]){
  print("Hola, $nombre $apellido");
}

void saludar0(String nombre, {String apellido = ""}){
  print("Hola, $nombre $apellido");
}

void saludar2({ required String nombre, String apellido = "" }){
  print("Hola, $nombre $apellido");
}

void saludar3({ required String nombre, required String apellido}){
  print("Hola, $nombre $apellido");
}

// class Alumns{
//   final String name;
//   final int id;

//   Alumns({required this.name, required this.id});

// }

Future<String> clima() async{
  print("Obteniendo el clima...");
  await Future.delayed(const Duration(seconds: 3));
  return "El clima es de 29°";
}

Future<String> obtenerClima() async{
  String datosClima = await clima();
  print(datosClima);
  return datosClima;
}