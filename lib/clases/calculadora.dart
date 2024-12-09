import 'dart:io';

void main(){
  // 1: Suma
  // 2: Resta
  // 3: Multi
  // 4: Division

  // stdout.write("Ingresa una opción: ");
  // int opcion = int.parse(stdin.readLineSync()!);

  // print(opcion);

  //1: Obtener la opción ingresada
  //2: Solicitar el primer número
  //3: Solicitar el segundo número

  //Ejecutar la operación logica y mostrar el resultado

  print("-------------------------------------------");
  print("|    Seleccione la operación a realizar:   |");
  print("-------------------------------------------");
  print("|1.Suma                                    |");
  print("|2.Resta                                   |");
  print("|3.Multiplicación                          |");
  print("|4.División                                |");
  print("-------------------------------------------");
  stdout.write("Ingrese el número de la operación a realizar: ");
  
  String? seleccion = stdin.readLineSync();

  switch (seleccion) {
    case "1":
      print("----------------------------");
      print("Operación seleccionada: Suma");
      print("----------------------------");
      stdout.write("Ingrese el primer número: ");
      int n1 = int.parse(stdin.readLineSync()!);
      stdout.write("Ingrese el segundo número: ");
      int n2 = int.parse(stdin.readLineSync()!);
      print("Resultado: ${n1 + n2}");
      break;
    case "2":
      print("----------------------------");
      print("Operación seleccionada: Resta");
      print("----------------------------");
      stdout.write("Ingrese el primer número: ");
      int n1 = int.parse(stdin.readLineSync()!);
      stdout.write("Ingrese el segundo número: ");
      int n2 = int.parse(stdin.readLineSync()!);
      print("Resultado: ${n1 - n2}");
      break;
    case "3":
      print("--------------------------------------");
      print("Operación seleccionada: Multiplicación");
      print("--------------------------------------");
      stdout.write("Ingrese el primer número: ");
      int n1 = int.parse(stdin.readLineSync()!);
      stdout.write("Ingrese el segundo número: ");
      int n2 = int.parse(stdin.readLineSync()!);
      print("Resultado: ${n1 * n2}");
      break;
    case "4":
      print("--------------------------------");
      print("Operación seleccionada: División");
      print("--------------------------------");
      stdout.write("Ingrese el primer número: ");
      double n1 = double.parse(stdin.readLineSync()!);
      stdout.write("Ingrese el segundo número: ");
      double n2 = double.parse(stdin.readLineSync()!);
      if (n2 != 0) {
        print("Resultado: ${n1 / n2}");
      } else {
        print("Error, no se puede dividir por 0");
      }
      break;
    default:
      print("---------------------------------------------------");
      print("Seleccione una de las opciones anteriores (1,2,3,4)");
      print("---------------------------------------------------");
  }

  Map<String, int> algo = {"A":1, "b":2};

  for(var element in algo.entries){
    //var algo2 = element.key;
    print("Value: ${element.value}");
  }

  algo.map((key, value) {
    print("Value: $value");
    return MapEntry(key, value);
  });

}