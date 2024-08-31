class Dog {
  String imageLink;
  int goodWithChildren;
  int goodWithOtherDogs;
  int shedding;
  int grooming;
  int drooling;
  int coatLength;
  int goodWithStrangers;
  int playfulness;
  int protectiveness;
  int trainability;
  int energy;
  int barking;
  int minLifeExpectancy;
  int maxLifeExpectancy;
  int maxHeightMale;
  int maxHeightFemale;
  int maxWeightMale;
  int maxWeightFemale;
  int minHeightMale;
  int minHeightFemale;
  int minWeightMale;
  int minWeightFemale;
  String name;

  Dog({
    required this.imageLink,
    required this.goodWithChildren,
    required this.goodWithOtherDogs,
    required this.shedding,
    required this.grooming,
    required this.drooling,
    required this.coatLength,
    required this.goodWithStrangers,
    required this.playfulness,
    required this.protectiveness,
    required this.trainability,
    required this.energy,
    required this.barking,
    required this.minLifeExpectancy,
    required this.maxLifeExpectancy,
    required this.maxHeightMale,
    required this.maxHeightFemale,
    required this.maxWeightMale,
    required this.maxWeightFemale,
    required this.minHeightMale,
    required this.minHeightFemale,
    required this.minWeightMale,
    required this.minWeightFemale,
    required this.name,
  });

  factory Dog.fromJson(Map<String, dynamic> json) => Dog(
        imageLink: json["image_link"],
        goodWithChildren: json["good_with_children"],
        goodWithOtherDogs: json["good_with_other_dogs"],
        shedding: json["shedding"],
        grooming: json["grooming"],
        drooling: json["drooling"],
        coatLength: json["coat_length"],
        goodWithStrangers: json["good_with_strangers"],
        playfulness: json["playfulness"],
        protectiveness: json["protectiveness"],
        trainability: json["trainability"],
        energy: json["energy"],
        barking: json["barking"],
        minLifeExpectancy: json["min_life_expectancy"],
        maxLifeExpectancy: json["max_life_expectancy"],
        maxHeightMale: json["max_height_male"],
        maxHeightFemale: json["max_height_female"],
        maxWeightMale: json["max_weight_male"],
        maxWeightFemale: json["max_weight_female"],
        minHeightMale: json["min_height_male"],
        minHeightFemale: json["min_height_female"],
        minWeightMale: json["min_weight_male"],
        minWeightFemale: json["min_weight_female"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "image_link": imageLink,
        "good_with_children": goodWithChildren,
        "good_with_other_dogs": goodWithOtherDogs,
        "shedding": shedding,
        "grooming": grooming,
        "drooling": drooling,
        "coat_length": coatLength,
        "good_with_strangers": goodWithStrangers,
        "playfulness": playfulness,
        "protectiveness": protectiveness,
        "trainability": trainability,
        "energy": energy,
        "barking": barking,
        "min_life_expectancy": minLifeExpectancy,
        "max_life_expectancy": maxLifeExpectancy,
        "max_height_male": maxHeightMale,
        "max_height_female": maxHeightFemale,
        "max_weight_male": maxWeightMale,
        "max_weight_female": maxWeightFemale,
        "min_height_male": minHeightMale,
        "min_height_female": minHeightFemale,
        "min_weight_male": minWeightMale,
        "min_weight_female": minWeightFemale,
        "name": name,
      };
}
