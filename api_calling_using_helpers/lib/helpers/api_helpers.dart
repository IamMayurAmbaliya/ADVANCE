import 'dart:developer';

import 'package:api_calling_using_helpers/global.dart';
import 'package:api_calling_using_helpers/headers.dart';
import 'package:api_calling_using_helpers/modal/agent_modal.dart';
import 'package:api_calling_using_helpers/modal/aircraft_modal.dart';
import 'package:api_calling_using_helpers/modal/airline_modal.dart';
import 'package:api_calling_using_helpers/modal/airport_modal.dart';
import 'package:api_calling_using_helpers/modal/animal_modal.dart';
import 'package:api_calling_using_helpers/modal/buddies.dart';
import 'package:api_calling_using_helpers/modal/caloriesburnedactivities_modal.dart';
import 'package:api_calling_using_helpers/modal/car_modal.dart';
import 'package:api_calling_using_helpers/modal/cat_modal.dart';
import 'package:api_calling_using_helpers/modal/celebrity_modal.dart';
import 'package:api_calling_using_helpers/modal/ceremony_modal.dart';
import 'package:api_calling_using_helpers/modal/city_modal.dart';
import 'package:api_calling_using_helpers/modal/cocktail_modal.dart';
import 'package:api_calling_using_helpers/modal/commodityStock_modal.dart';
import 'package:api_calling_using_helpers/modal/company_logo_modal.dart';
import 'package:api_calling_using_helpers/modal/content_modal.dart';
import 'package:api_calling_using_helpers/modal/country_modal.dart';
import 'package:api_calling_using_helpers/modal/currencies_modal.dart';
import 'package:api_calling_using_helpers/modal/dog_modal.dart';
import 'package:api_calling_using_helpers/modal/emoji_modal.dart';
import 'package:api_calling_using_helpers/modal/event_modal.dart';
import 'package:api_calling_using_helpers/modal/exercise_modal.dart';
import 'package:api_calling_using_helpers/modal/game_mode_modal.dart';
import 'package:api_calling_using_helpers/modal/helicopter_modal.dart';
import 'package:api_calling_using_helpers/modal/historical_event_modal.dart';
import 'package:api_calling_using_helpers/modal/historical_man_modal.dart';
import 'package:api_calling_using_helpers/modal/holiday_modal.dart';
import 'package:api_calling_using_helpers/modal/interest_rate_modal.dart';
import 'package:api_calling_using_helpers/modal/levelborder_modal.dart';
import 'package:api_calling_using_helpers/modal/map_modal.dart';
import 'package:api_calling_using_helpers/modal/nature_modal.dart';
import 'package:api_calling_using_helpers/modal/playercard_modal.dart';
import 'package:api_calling_using_helpers/modal/quote_category_modal.dart';
import 'package:api_calling_using_helpers/modal/recipe_modal.dart';
import 'package:api_calling_using_helpers/modal/riddle_modal.dart';
import 'package:api_calling_using_helpers/modal/season_modal.dart';
// import 'package:api_calling_using_helpers/modal/restaurant_modal.dart';
import 'package:api_calling_using_helpers/modal/spray_modal.dart';
import 'package:api_calling_using_helpers/modal/swift_code_modal.dart';
import 'package:api_calling_using_helpers/modal/theme_modal.dart';
import 'package:api_calling_using_helpers/modal/url_lookUp_modal.dart';
import 'package:api_calling_using_helpers/modal/user_modal.dart';
import 'package:api_calling_using_helpers/modal/wallPapers_modal.dart';
import 'package:api_calling_using_helpers/modal/weapon_modal.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  ApiHelper._();

  static final ApiHelper apiHelper = ApiHelper._();

  String postApi = "https://jsonplaceholder.typicode.com/posts";
  //List Wali Api mathi Data get karva mate
  // Future<List<Post>> getData() async {
  //   List<Post> allPosts = [];
  //   //get request
  //   http.Response response = await http.get(Uri.parse(postApi));
  //
  //   //response validate
  //   if (response.statusCode == 200) {
  //     List data = jsonDecode(response.body.toString());
  //     //data parse
  //     allPosts = data.map((e) => Post.fromJson(e)).toList();
  //     return allPosts;
  //   } else {
  //     return allPosts;
  //   }
  // }

  //========================================//

  Future<List<Post>> getPostData() async {
    List<Post> allPosts = [];
    http.Response response = await http.get(Uri.parse(postApi));

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body.toString());

      List<Post> allPosts = data.map((e) => Post.fromJson(e)).toList();
      return allPosts;
    } else {
      return allPosts;
    }
  }

  //WallPaperApi
  //PixaBay Apis
  // String WallPaperApi =
  //     "https://pixabay.com/api/?key=43858928-dd61ab0291edea9894092e5f0";
  // Future<List<Wallpaper>> getWallPaper() async {
  //   List<Wallpaper> allWallPaper = [];
  //   http.Response response = await http.get(Uri.parse(WallPaperApi));
  //
  //   if (response.statusCode == 200) {
  //     Map data = jsonDecode(response.body.toString());
  //     List allImages = data['hits'];
  //     log("Data: $allImages");
  //     allWallPaper = allImages.map((e) => Wallpaper.fromJson(e)).toList();
  //   }
  //   return allWallPaper;
  // }

  //
  //   //========================================//
  //
  //

  //Pexel-Api
  String wallPapersApi = "https://api.pexels.com/v1/search?query=nature";
  Future<List<WallPapers>> getAllWallPapers() async {
    log("method called....");
    List<WallPapers> getAllWallPapers = [];
    http.Response response = await http.get(
      Uri.parse(wallPapersApi),
      headers: {
        'Authorization':
            'wf0bQqOQaK4zMvaOGfTfZouVYEfw44sIC8XLNIUhBYzSyHYNzRxyzDbH'
      },
    );
    log("Code:${response.statusCode}");
    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body.toString());
      List wp = data["photos"];
      log("Data: $wp");
      getAllWallPapers = wp.map((e) => WallPapers.fromJson(e)).toList();
    }
    return getAllWallPapers;
  }

  //========================================//

  //Weapon-Api
  String weaponApi = "https://valorant-api.com/v1/weapons/skinlevels";
  Future<List<Weapon>> getAllWeapon() async {
    List<Weapon> allWeapon = [];
    http.Response response = await http.get(Uri.parse(weaponApi));

    if (response.statusCode == 200) {
      Map d = jsonDecode(response.body.toString());
      List skin = d['data'];
      allWeapon = skin.map((e) => Weapon.fromJson(e)).toList();
    }
    return allWeapon;
  }

  //========================================//

  //Spray-Api
  String sprayApi = "https://valorant-api.com/v1/sprays";
  Future<List<Spray>> getAllSpray() async {
    List<Spray> allSpray = [];
    http.Response response = await http.get(Uri.parse(sprayApi));

    if (response.statusCode == 200) {
      Map d = jsonDecode(response.body.toString());
      List skin = d['data'];
      allSpray = skin.map((e) => Spray.fromJson(e)).toList();
    }
    return allSpray;
  }

  //========================================//

  //PlayerCard-Api
  String playerCardApi = "https://valorant-api.com/v1/playercards";
  Future<List<PlayerCard>> getAllPlayerCard() async {
    List<PlayerCard> allPlayer = [];
    http.Response response = await http.get(Uri.parse(playerCardApi));

    if (response.statusCode == 200) {
      Map d = jsonDecode(response.body.toString());
      List player = d["data"];
      allPlayer = player.map((e) => PlayerCard.fromJson(e)).toList();
    }
    return allPlayer;
  }

  //========================================//

  // //Restaurant-Api
  // String restaurantApi =
  //     "https://www.foodchow.com/api/FoodChowWD/AllRestaurantsWDOfferApp?Country=India&city=Surat&area=&longitude=&latitude=&deliveryMethod=&cuisineId=2,1&clientid=&startlimit=0&endlimit=1000&onoffflag";
  // Future<List<Restaurant>> getAllRestaurant() async {
  //   List<Restaurant> allRestaurant = [];
  //   http.Response response = await http.get(Uri.parse(restaurantApi));
  //   if (response.statusCode == 200) {
  //     Map d = jsonDecode(response.body);
  //     List restaurants = d['data'];
  //     allRestaurant = restaurants.map((e) => Restaurant.fromJson(e)).toList();
  //   }
  //   return allRestaurant;
  // }

//========================================//

//Currencies-Api

  String currenciesApi = "https://valorant-api.com/v1/currencies";
  Future<List<Currencies>> getAllCurrencies() async {
    List<Currencies> allCurrencies = [];
    http.Response response = await http.get(Uri.parse(currenciesApi));

    if (response.statusCode == 200) {
      Map d = jsonDecode(response.body);
      List currencies = d['data'];
      allCurrencies = currencies.map((e) => Currencies.fromJson(e)).toList();
    }
    return allCurrencies;
  }

//========================================//

//Theme-Api

  String themeApi = "https://valorant-api.com/v1/themes";
  Future<List<Themes>> getAllTheme() async {
    List<Themes> allTheme = [];
    http.Response response = await http.get(Uri.parse(themeApi));

    if (response.statusCode == 200) {
      Map d = jsonDecode(response.body);
      List theme = d['data'];
      allTheme = theme.map((e) => Themes.fromJson(e)).toList();
    }
    return allTheme;
  }

//========================================//

//Season-Api

  String seasonApi = "https://valorant-api.com/v1/seasons";
  Future<List<Season>> getAllSeason() async {
    List<Season> allSeason = [];
    http.Response response = await http.get(Uri.parse(seasonApi));

    if (response.statusCode == 200) {
      Map d = jsonDecode(response.body);
      List season = d['data'];
      allSeason = season.map((e) => Season.fromJson(e)).toList();
    }
    return allSeason;
  }

//========================================//

//Map-Api

  String mapApi = "https://valorant-api.com/v1/maps";
  Future<List<Maps>> getAllMap() async {
    List<Maps> allMap = [];
    http.Response response = await http.get(Uri.parse(mapApi));

    if (response.statusCode == 200) {
      Map d = jsonDecode(response.body);
      List loc = d['data'];
      allMap = loc.map((e) => Maps.fromJson(e)).toList();
    }
    return allMap;
  }

//========================================//

//LevelBorder-Api

  String levelBorderApi = "https://valorant-api.com/v1/levelborders";
  Future<List<LevelBorder>> getAllLevelBorder() async {
    List<LevelBorder> allLevelBorder = [];
    http.Response response = await http.get(Uri.parse(levelBorderApi));

    if (response.statusCode == 200) {
      Map d = jsonDecode(response.body);
      List level = d['data'];
      allLevelBorder = level.map((e) => LevelBorder.fromJson(e)).toList();
    }
    return allLevelBorder;
  }

//========================================//

//GameMode-Api

  String gameModeApi = "https://valorant-api.com/v1/gamemodes";
  Future<List<GameMode>> getAllGameMode() async {
    List<GameMode> allGameMode = [];
    http.Response response = await http.get(Uri.parse(gameModeApi));

    if (response.statusCode == 200) {
      Map d = jsonDecode(response.body);
      List mode = d['data'];
      allGameMode = mode.map((e) => GameMode.fromJson(e)).toList();
    }
    return allGameMode;
  }

//========================================//

//Event-Api

  String eventApi = "https://valorant-api.com/v1/events";
  Future<List<Events>> getAllEvent() async {
    List<Events> allEvent = [];
    http.Response response = await http.get(Uri.parse(eventApi));

    if (response.statusCode == 200) {
      Map d = jsonDecode(response.body);
      List e = d["data"];
      allEvent = e.map((e) => Events.fromJson(e)).toList();
    }
    return allEvent;
  }

//========================================//

//Content-Api

  String contentApi = "https://valorant-api.com/v1/contenttiers";
  Future<List<Content>> getAllContent() async {
    List<Content> allContent = [];
    http.Response response = await http.get(Uri.parse(contentApi));

    if (response.statusCode == 200) {
      Map d = jsonDecode(response.body);
      List master = d["data"];
      allContent = master.map((e) => Content.fromJson(e)).toList();
    }
    return allContent;
  }

//========================================//

//Ceremony-Api

  String ceremonyApi = "https://valorant-api.com/v1/ceremonies";
  Future<List<Ceremony>> getAllCeremony() async {
    List<Ceremony> allCeremony = [];
    http.Response response = await http.get(Uri.parse(ceremonyApi));

    if (response.statusCode == 200) {
      Map d = jsonDecode(response.body);
      List master = d["data"];
      allCeremony = master.map((e) => Ceremony.fromJson(e)).toList();
    }
    return allCeremony;
  }

//========================================//

//Agent-Api

  String agentApi = "https://valorant-api.com/v1/agents";
  Future<List<Agent>> getAllAgent() async {
    List<Agent> allCeremony = [];
    http.Response response = await http.get(Uri.parse(agentApi));

    if (response.statusCode == 200) {
      Map d = jsonDecode(response.body.toString());
      List master = d["data"];
      allCeremony = master.map((e) => Agent.fromJson(e)).toList();
    }
    return allCeremony;
  }

//========================================//

//User-Api

  String userApi = "https://reqres.in/api/users/";
  Future<List<User>> getAllUser() async {
    List<User> allUser = [];
    http.Response response = await http.get(
      Uri.parse(agentApi),
    );

    if (response.statusCode == 200) {
      Map d = jsonDecode(response.body);
      List master = d["data"];
      allUser = master.map((e) => User.fromJson(e)).toList();
    }
    return allUser;
  }

//========================================//

//Car-Api

  String carApi = "https://api.api-ninjas.com/v1/cars?limit=15&model=camry";
  Future<List<Car>> getAllCar() async {
    List<Car> allCar = [];
    http.Response response = await http.get(
      Uri.parse(carApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      allCar = data.map((e) => Car.fromJson(e)).toList();
    }
    return allCar;
  }

//========================================//

//Buddy-Api

  String buddyApi = "https://valorant-api.com/v1/buddies";
  Future<List<Buddy>> getAllBuddy() async {
    List<Buddy> allBuddy = [];
    http.Response response = await http.get(
      Uri.parse(buddyApi),
    );

    if (response.statusCode == 200) {
      Map d = jsonDecode(response.body);
      List master = d["data"];
      allBuddy = master.map((e) => Buddy.fromJson(e)).toList();
    }
    return allBuddy;
  }

//========================================//

//Nature-Api

  String natureApi = "https://api.pexels.com/videos/search?query=nature";
  Future<List<Nature>> getAllNature() async {
    List<Nature> allNature = [];
    http.Response response = await http.get(
      Uri.parse(natureApi),
      headers: {
        "Authorization":
            "wf0bQqOQaK4zMvaOGfTfZouVYEfw44sIC8XLNIUhBYzSyHYNzRxyzDbH",
      },
    );

    if (response.statusCode == 200) {
      Map d = jsonDecode(response.body);
      List master = d["videos"];
      allNature = master.map((e) => Nature.fromJson(e)).toList();
    }
    return allNature;
  }

//========================================//

//Country-Api
//
//   String countryApi = "https://api.api-ninjas.com/v1/country?limit =25";
//   Future<List<Country>> getAllCountry() async {
//     List<Country> allCountry = [];
//     http.Response response = await http.get(
//       Uri.parse(countryApi),
//       headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
//     );
//
//     if (response.statusCode == 200) {
//       List data = jsonDecode(response.body);
//       allCountry = data.map((e) => Country.fromJson(e)).toList();
//     }
//     return allCountry;
//   }

//========================================//

//AirCraft-Api

  String airCraftApi =
      "https://api.api-ninjas.com/v1/aircraft?manufacturer=gulfstream&limit=15";
  Future<List<AirCraft>> getAllAirCraft() async {
    List<AirCraft> allAirCraft = [];
    http.Response response = await http.get(
      Uri.parse(airCraftApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      allAirCraft = data.map((e) => AirCraft.fromJson(e)).toList();
    }
    return allAirCraft;
  }

//========================================//

//AirCraftLine-Api

  String airLineApi =
      "https://api.api-ninjas.com/v1/airlines?name=${Globals.globals.searchAirlines}";
  Future<List<Airline>> getAllAirLine() async {
    List<Airline> allAirLine = [];
    String airLineApi =
        "https://api.api-ninjas.com/v1/airlines?name=${Globals.globals.searchAirlines}";
    http.Response response = await http.get(
      Uri.parse(airLineApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      log(Globals.globals.searchAirlines);

      List data = jsonDecode(response.body);
      allAirLine = data.map((e) => Airline.fromJson(e)).toList();
    }
    return allAirLine;
  }

//========================================//

//AirPort-Api

  String airPortApi =
      "https://api.api-ninjas.com/v1/airports?country=${Globals.globals.searchAirPorts}";
  Future<List<AirPort>> getAllAirPort() async {
    List<AirPort> allAirPort = [];
    String airPortApi =
        "https://api.api-ninjas.com/v1/airports?country=${Globals.globals.searchAirPorts}";
    http.Response response = await http.get(
      Uri.parse(airPortApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      log(Globals.globals.searchAirPorts);

      List data = jsonDecode(response.body);
      allAirPort = data.map((e) => AirPort.fromJson(e)).toList();
    }
    return allAirPort;
  }

//========================================//

//Animal-Api

  String animalApi =
      "https://api.api-ninjas.com/v1/animals?name=${Globals.globals.searchAnimal}";
  Future<List<Animal>> getAllAnimal() async {
    List<Animal> allAnimal = [];
    String animalApi =
        "https://api.api-ninjas.com/v1/animals?name=${Globals.globals.searchAnimal}";
    http.Response response = await http.get(
      Uri.parse(animalApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      log(Globals.globals.searchAnimal);

      List data = jsonDecode(response.body);
      allAnimal = data.map((e) => Animal.fromJson(e)).toList();
    }
    return allAnimal;
  }

//========================================//

//caloriesburnedactivities-Api

  String caloriesBurnedActivityApi =
      "https://api.api-ninjas.com/v1/caloriesburned?activity=${Globals.globals.searchActivity}";
  Future<List<CaloriesBurnedActivity>> getAllCaloriesBurnedActivity() async {
    List<CaloriesBurnedActivity> allCaloriesBurnedActivity = [];
    String caloriesBurnedActivityApi =
        "https://api.api-ninjas.com/v1/caloriesburned?activity=${Globals.globals.searchActivity}";
    http.Response response = await http.get(
      Uri.parse(caloriesBurnedActivityApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      log(Globals.globals.searchActivity);

      List data = jsonDecode(response.body);
      allCaloriesBurnedActivity =
          data.map((e) => CaloriesBurnedActivity.fromJson(e)).toList();
    }
    return allCaloriesBurnedActivity;
  }

//========================================//

//Cat-Api

  String catApi =
      "https://api.api-ninjas.com/v1/cats?name=${Globals.globals.searchCatBreedName}";
  Future<List<Cat>> getAllCat() async {
    List<Cat> allCat = [];
    String catApi =
        "https://api.api-ninjas.com/v1/cats?name=${Globals.globals.searchCatBreedName}";
    http.Response response = await http.get(
      Uri.parse(catApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      log(Globals.globals.searchCatBreedName);

      List data = jsonDecode(response.body);
      allCat = data.map((e) => Cat.fromJson(e)).toList();
    }
    return allCat;
  }

//========================================//

//Celebrity-Api

  String celebrityApi =
      "https://api.api-ninjas.com/v1/celebrity?name=${Globals.globals.searchCelebrityName}";
  Future<List<Celebrity>> getAllCelebrity() async {
    List<Celebrity> AllCelebrity = [];
    String celebrityApi =
        "https://api.api-ninjas.com/v1/celebrity?name=${Globals.globals.searchCelebrityName}";
    http.Response response = await http.get(
      Uri.parse(celebrityApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      log(Globals.globals.searchCelebrityName);

      List data = jsonDecode(response.body);
      AllCelebrity = data.map((e) => Celebrity.fromJson(e)).toList();
    }
    return AllCelebrity;
  }

//========================================//

//City-Api

  String cityApi =
      "https://api.api-ninjas.com/v1/city?name=${Globals.globals.searchCityName}";
  Future<List<City>> getAllCity() async {
    List<City> AllCity = [];
    String cityApi =
        "https://api.api-ninjas.com/v1/city?name=${Globals.globals.searchCityName}";
    http.Response response = await http.get(
      Uri.parse(cityApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      log(Globals.globals.searchCityName);

      List data = jsonDecode(response.body);
      AllCity = data.map((e) => City.fromJson(e)).toList();
    }
    return AllCity;
  }

//========================================//

//Cocktail-Api

  String cocktailApi =
      "https://api.api-ninjas.com/v1/cocktail?name=${Globals.globals.searchCocktailName}";
  Future<List<Cocktail>> getAllCocktail() async {
    List<Cocktail> AllCocktail = [];
    String cocktailApi =
        "https://api.api-ninjas.com/v1/cocktail?name=${Globals.globals.searchCocktailName}";
    http.Response response = await http.get(
      Uri.parse(cocktailApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      log(Globals.globals.searchCocktailName);

      List data = jsonDecode(response.body);
      AllCocktail = data.map((e) => Cocktail.fromJson(e)).toList();
    }
    return AllCocktail;
  }

//========================================//

// //Dictionary-Api
//
//   String dictionaryApi =
//       "https://api.api-ninjas.com/v1/dictionary?word=${Globals.globals.searchDictionaryWord}";
//   Future<List<Cocktail>> getAllDictionaryWord() async {
//     List<Cocktail> AllDictionaryWord = [];
//     String dictionaryApi =
//         "https://api.api-ninjas.com/v1/dictionary?word=${Globals.globals.searchDictionaryWord}";
//     http.Response response = await http.get(
//       Uri.parse(dictionaryApi),
//       headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
//     );
//
//     if (response.statusCode == 200) {
//       log(Globals.globals.searchCocktailName);
//
//       List data = jsonDecode(response.body);
//       AllDictionaryWord = data.map((e) => Cocktail.fromJson(e)).toList();
//     }
//     return AllDictionaryWord;
//   }

//========================================//

//dog-Api

  String dogApi =
      "https://api.api-ninjas.com/v1/dogs?name=${Globals.globals.searchDogName}";
  Future<List<Dog>> getAllDog() async {
    List<Dog> allDog = [];
    String dogApi =
        "https://api.api-ninjas.com/v1/dogs?name=${Globals.globals.searchDogName}";
    http.Response response = await http.get(
      Uri.parse(dogApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      log(Globals.globals.searchDogName);

      List data = jsonDecode(response.body);
      allDog = data.map((e) => Dog.fromJson(e)).toList();
    }
    return allDog;
  }

//========================================//

//Emoji-Api

  String emojiApi =
      "https://api.api-ninjas.com/v1/emoji?name=${Globals.globals.searchEmojiName}";
  Future<List<Emoji>> getAllEmoji() async {
    List<Emoji> allEmoji = [];
    String emojiApi =
        "https://api.api-ninjas.com/v1/emoji?name=${Globals.globals.searchEmojiName}";
    http.Response response = await http.get(
      Uri.parse(emojiApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      log(Globals.globals.searchEmojiName);

      List data = jsonDecode(response.body);
      allEmoji = data.map((e) => Emoji.fromJson(e)).toList();
    }
    return allEmoji;
  }

//========================================//

//Exercise-Api

  String exerciseApi =
      "https://api.api-ninjas.com/v1/exercises?muscle=${Globals.globals.searchExerciseName}";
  Future<List<Exercise>> getAllExercise() async {
    List<Exercise> allExercise = [];
    String exerciseApi =
        "https://api.api-ninjas.com/v1/exercises?muscle=${Globals.globals.searchExerciseName}";
    http.Response response = await http.get(
      Uri.parse(exerciseApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      log(Globals.globals.searchExerciseName);

      List data = jsonDecode(response.body);
      allExercise = data.map((e) => Exercise.fromJson(e)).toList();
    }
    return allExercise;
  }

//========================================//

//Helicopter-Api

  String helicopterApi =
      "https://api.api-ninjas.com/v1/helicopter?manufacturer=${Globals.globals.searchHelicopterManufacturerName}";
  Future<List<Helicopter>> getAllHelicopterManufacturer() async {
    List<Helicopter> allHelicopterManufacturer = [];
    String helicopterApi =
        "https://api.api-ninjas.com/v1/helicopter?manufacturer=${Globals.globals.searchHelicopterManufacturerName}";
    http.Response response = await http.get(
      Uri.parse(helicopterApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      log(Globals.globals.searchHelicopterManufacturerName);

      List data = jsonDecode(response.body);
      allHelicopterManufacturer =
          data.map((e) => Helicopter.fromJson(e)).toList();
    }
    return allHelicopterManufacturer;
  }

//========================================//

//historicalEvent-Api

  String historicalEventApi =
      "https://api.api-ninjas.com/v1/historicalevents?text=${Globals.globals.searchHistoricalEventName}";
  Future<List<HistoricalEvent>> getAllHistoricalEvent() async {
    List<HistoricalEvent> allHistoricalEvent = [];
    String historicalEventApi =
        "https://api.api-ninjas.com/v1/historicalevents?text=${Globals.globals.searchHistoricalEventName}";
    http.Response response = await http.get(
      Uri.parse(historicalEventApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      log(Globals.globals.searchHistoricalEventName);

      List data = jsonDecode(response.body);
      allHistoricalEvent =
          data.map((e) => HistoricalEvent.fromJson(e)).toList();
    }
    return allHistoricalEvent;
  }

//========================================//

//historicalMan-Api

  String historicalManApi =
      "https://api.api-ninjas.com/v1/historicalfigures?name=${Globals.globals.searchHistoricalManName}";
  Future<List<HistoricalMan>> getAllHistoricalMan() async {
    List<HistoricalMan> allHistoricalMan = [];
    String historicalManApi =
        "https://api.api-ninjas.com/v1/historicalfigures?name=${Globals.globals.searchHistoricalManName}";
    http.Response response = await http.get(
      Uri.parse(historicalManApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      log(Globals.globals.searchHistoricalManName);

      List data = jsonDecode(response.body);
      allHistoricalMan = data.map((e) => HistoricalMan.fromJson(e)).toList();
    }
    return allHistoricalMan;
  }

//========================================//

//holiday-Api

  String holidayApi =
      "https://api.api-ninjas.com/v1/holidays?country=${Globals.globals.searchHolidayCountry}&year=${Globals.globals.searchHolidayYear}";
  Future<List<Holiday>> getAllHoliday() async {
    List<Holiday> allHoliday = [];
    String holidayApi =
        "https://api.api-ninjas.com/v1/holidays?country=${Globals.globals.searchHolidayCountry}&year=${Globals.globals.searchHolidayYear}";
    http.Response response = await http.get(
      Uri.parse(holidayApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      log(Globals.globals.searchHolidayCountry);
      log(Globals.globals.searchHolidayYear);

      List data = jsonDecode(response.body);
      allHoliday = data.map((e) => Holiday.fromJson(e)).toList();
    }
    return allHoliday;
  }

//========================================//

//interestrate-Api

  String interestRateApi =
      "https://api.api-ninjas.com/v1/interestrate?country=${Globals.globals.searchCountryForInterestRate}";
  Future<List<InterestRate>> getAllCountryWithInterestRate() async {
    List<InterestRate> allCountryWithInterestRate = [];
    String interestRateApi =
        "https://api.api-ninjas.com/v1/interestrate?country=${Globals.globals.searchCountryForInterestRate}";
    http.Response response = await http.get(
      Uri.parse(interestRateApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      log(Globals.globals.searchCountryForInterestRate);

      Map data = jsonDecode(response.body);
      List rate = data["central_bank_rates"];
      allCountryWithInterestRate =
          rate.map((e) => InterestRate.fromJson(e)).toList();
    }
    return allCountryWithInterestRate;
  }

//========================================//

//companyLogo-Api

  String companyLogoApi =
      "https://api.api-ninjas.com/v1/logo?name=${Globals.globals.searchHolidayCountry}&year=${Globals.globals.searchCompanyName}";
  Future<List<CompanyLogo>> getAllCompanyLogo() async {
    List<CompanyLogo> allCompanyLogo = [];
    String companyLogoApi =
        "https://api.api-ninjas.com/v1/logo?name=${Globals.globals.searchHolidayCountry}&year=${Globals.globals.searchCompanyName}";
    http.Response response = await http.get(
      Uri.parse(companyLogoApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      log(Globals.globals.searchCompanyName);

      List data = jsonDecode(response.body);
      allCompanyLogo = data.map((e) => CompanyLogo.fromJson(e)).toList();
    }
    return allCompanyLogo;
  }

//========================================//

//quote-Api

  String quoteApi =
      "https://api.api-ninjas.com/v1/quotes?category=${Globals.globals.searchQuoteCategory}";
  Future<List<Quote>> getAllQuote() async {
    List<Quote> allQuote = [];
    String quoteApi =
        "https://api.api-ninjas.com/v1/quotes?category=${Globals.globals.searchQuoteCategory}";
    http.Response response = await http.get(
      Uri.parse(quoteApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      log(Globals.globals.searchQuoteCategory);

      List data = jsonDecode(response.body);
      allQuote = data.map((e) => Quote.fromJson(e)).toList();
    }
    return allQuote;
  }

//========================================//

//Recipe-Api

  String recipeApi =
      "https://api.api-ninjas.com/v1/recipe?query=${Globals.globals.searchRecipe}";
  Future<List<Recipe>> getAllRecipe() async {
    List<Recipe> allRecipe = [];
    String recipeApi =
        "https://api.api-ninjas.com/v1/recipe?query=${Globals.globals.searchRecipe}";
    http.Response response = await http.get(
      Uri.parse(recipeApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      log(Globals.globals.searchRecipe);

      List data = jsonDecode(response.body);
      allRecipe = data.map((e) => Recipe.fromJson(e)).toList();
    }
    return allRecipe;
  }

  //========================================//

  //riddle-Api
  String riddleApi = "https://api.api-ninjas.com/v1/riddles";
  Future<List<Riddle>> getAllRiddle() async {
    List<Riddle> allRiddle = [];
    http.Response response = await http.get(Uri.parse(riddleApi));

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body.toString());
      allRiddle = data.map((e) => Riddle.fromJson(e)).toList();
    }
    return allRiddle;
  }

//========================================//

//Swiftcode-Api

  String swiftCodeApi =
      "https://api.api-ninjas.com/v1/swiftcode?bank=${Globals.globals.searchBankName}";
  Future<List<SwiftCode>> getAllSwiftCode() async {
    List<SwiftCode> allSwiftCode = [];
    String swiftCodeApi =
        "https://api.api-ninjas.com/v1/swiftcode?bank=${Globals.globals.searchBankName}";
    http.Response response = await http.get(
      Uri.parse(swiftCodeApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      log(Globals.globals.searchBankName);

      List data = jsonDecode(response.body);
      allSwiftCode = data.map((e) => SwiftCode.fromJson(e)).toList();
    }
    return allSwiftCode;
  }

//========================================//

//Urllookup-Api

  String urlLookUpApi =
      "https://api.api-ninjas.com/v1/urllookup?url=${Globals.globals.searchUrl}";

  Future getAllUrl() async {
    String urlLookUpApi =
        "https://api.api-ninjas.com/v1/urllookup?url=${Globals.globals.searchUrl}";

    http.Response response = await http.get(
      Uri.parse(urlLookUpApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body.toString());
      UrlLookUp? urlLookUp;
      urlLookUp = UrlLookUp.fromJson(data as Map<String, dynamic>);
      return urlLookUp;
    }
  }

//========================================//

//CommodityPrice-Api

  String commodityStockApi =
      "https://api.api-ninjas.com/v1/commodityprice?name=${Globals.globals.searchCommodityStock}";

  Future getAllCommodityStock() async {
    String commodityStockApi =
        "https://api.api-ninjas.com/v1/commodityprice?name=${Globals.globals.searchCommodityStock}";

    http.Response response = await http.get(
      Uri.parse(commodityStockApi),
      headers: {'X-Api-Key': "Q4QZH0WlGoe+gPas1WUoHw==rbnXYDrLdCGCLpKN"},
    );

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body.toString());
      CommodityStock? commodityStock;
      commodityStock = CommodityStock.fromJson(data as Map<String, dynamic>);
      return commodityStock;
    }
  }
}
