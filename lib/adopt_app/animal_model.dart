class AnimalModel{
  final String id;
  final String name;
  final String breed;
  final int age;
  final int imageURL;
  final String type;
  final bool isFavorite;

  const AnimalModel({
    required this.id,
    required this.name,
    required this.breed,
    required this.age,
    required this.imageURL,
    required this.type,
    this.isFavorite = false,
  });

  AnimalModel copyWith({bool? isFavorite}){
    return AnimalModel(
      id: id, 
      name: name, 
      breed: breed, 
      age: age, 
      imageURL: 
      imageURL, 
      type: type,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

}

  // {
  //   "id" : "1",
  //   "name" : "",
  //   "breed" : "XX",
  //   "age" : 3,
  //   "imageUrl" : "",
  //   "type" : "dog",
  // },