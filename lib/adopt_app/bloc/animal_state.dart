part of 'animal_bloc.dart';

//Recordar borrar la ultima variable el bloc lanzará un error (es normal)


//Estados de la página tipo "Peticiones"
enum AnimalPageStates {
  none,
  loading,
  success,
  failure,
}

class AnimalState extends Equatable {

  //Importar el Listado
  final List<AnimalModel> animals;
  final List<AnimalModel> favorites;
  final AnimalPageStates pageStates;
  final String filter;


  //Agregar al constructor las propiedas de arriba
  const AnimalState({
    required this.animals,
    required this.favorites,
    required this.pageStates,
    required this.filter,
  });
  

  //Acá inicializamos el estado de las propiedades
  factory AnimalState.initial(){
    return AnimalState(
      animals: List.empty(), 
      favorites: List.empty(), 
      pageStates: AnimalPageStates.none, 
      filter: "dog",
    );
  }

  //Realizamos el copyWith
  AnimalState copyWith({
    List<AnimalModel>? animals,
    List<AnimalModel>? favorites,
    AnimalPageStates? pageStates,
    String? filter,
  }){
    return AnimalState(
      animals: animals ?? this.animals, 
      favorites: favorites ?? this.favorites, 
      pageStates: pageStates ?? this.pageStates, 
      filter: filter ?? this.filter,
    );
  }

  //Cargar los props
  @override
  List<Object> get props => [
    animals,
    favorites,
    pageStates,
    filter
    ];
}


