import 'dart:developer';

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
import 'package:api_calling_using_helpers/modal/restaurant_modal.dart';
import 'package:api_calling_using_helpers/modal/riddle_modal.dart';
import 'package:api_calling_using_helpers/modal/season_modal.dart';
import 'package:api_calling_using_helpers/modal/spray_modal.dart';
import 'package:api_calling_using_helpers/modal/swift_code_modal.dart';
import 'package:api_calling_using_helpers/modal/theme_modal.dart';
import 'package:api_calling_using_helpers/modal/url_lookUp_modal.dart';
import 'package:api_calling_using_helpers/modal/user_modal.dart';
import 'package:api_calling_using_helpers/modal/wallPapers_modal.dart';
// import 'package:api_calling_using_helpers/modal/wallPapers_modal.dart';
import 'package:api_calling_using_helpers/modal/weapon_modal.dart';

// class WallPaperController extends ChangeNotifier {
//   List<Wallpaper> allWallPaperImage = [];
//   WallPaperController() {
//     getData();
//   }
//
//   Future<void> getData() async {
//     allWallPaperImage = await ApiHelper.apiHelper.getWallPaper();
//     log("data:$allWallPaperImage");
//     notifyListeners();
//   }
// }
class WallPaperController extends ChangeNotifier {
  List<WallPapers> allWallPaperImage = [];
  List<Weapon> allWeapons = [];
  List<Spray> allSprays = [];
  List<PlayerCard> allPlayerCard = [];
  // List<Restaurant> allRestaurant = [];
  List<Currencies> allCurrency = [];
  List<Themes> allThemes = [];
  List<Season> allSeasons = [];
  List<Maps> allMaps = [];
  List<LevelBorder> allLevelBorders = [];
  List<GameMode> allGameModes = [];
  List<Events> allEvents = [];
  List<Content> allContents = [];
  List<Ceremony> allCeremonies = [];
  List<Agent> allAgents = [];
  List<User> allUsers = [];
  List<Car> allCars = [];
  List<Buddy> allBuddies = [];
  List<Nature> allNatures = [];
  // List<Country> allCountries = [];
  List<AirCraft> allAirCrafts = [];
  List<Airline> allAirLines = [];
  List<AirPort> allAirPorts = [];
  List<Animal> allAnimals = [];
  List<CaloriesBurnedActivity> allCaloriesBurnedActivities = [];
  List<Cat> allCats = [];
  List<Celebrity> allCelebrities = [];
  List<City> allCities = [];
  List<Cocktail> allCocktails = [];
  List<Dog> allDogs = [];
  List<Emoji> allEmojis = [];
  List<Exercise> allExercises = [];
  List<Helicopter> allHelicopterManufacturers = [];
  List<HistoricalEvent> allHistoricalEvents = [];
  List<HistoricalMan> allHistoricalMans = [];
  List<Holiday> allHolidays = [];
  List<InterestRate> allCountryWithInterestRates = [];
  List<CompanyLogo> allCompanyLogos = [];
  List<Quote> allQuotes = [];
  List<Recipe> allRecipes = [];
  List<Riddle> allRiddles = [];
  List<SwiftCode> allSwiftCodes = [];
  UrlLookUp? urlLookUp;
  CommodityStock? commodityStock;

  WallPaperController() {
    getData();
  }

  Future<void> getData() async {
    allWallPaperImage = await ApiHelper.apiHelper.getAllWallPapers();
    log("data:$allWallPaperImage");
    log("===================================");
    log("LENGTH: ${allWallPaperImage.length}");
    log("===================================");

    allWeapons = await ApiHelper.apiHelper.getAllWeapon();

    allSprays = await ApiHelper.apiHelper.getAllSpray();

    allPlayerCard = await ApiHelper.apiHelper.getAllPlayerCard();

    // allRestaurant = await ApiHelper.apiHelper.getAllRestaurant();

    allCurrency = await ApiHelper.apiHelper.getAllCurrencies();

    allThemes = await ApiHelper.apiHelper.getAllTheme();

    allSeasons = await ApiHelper.apiHelper.getAllSeason();

    allMaps = await ApiHelper.apiHelper.getAllMap();

    allLevelBorders = await ApiHelper.apiHelper.getAllLevelBorder();

    allGameModes = await ApiHelper.apiHelper.getAllGameMode();

    allEvents = await ApiHelper.apiHelper.getAllEvent();

    allContents = await ApiHelper.apiHelper.getAllContent();

    allCeremonies = await ApiHelper.apiHelper.getAllCeremony();

    allAgents = await ApiHelper.apiHelper.getAllAgent();

    allUsers = await ApiHelper.apiHelper.getAllUser();

    allCars = await ApiHelper.apiHelper.getAllCar();

    allBuddies = await ApiHelper.apiHelper.getAllBuddy();

    allNatures = await ApiHelper.apiHelper.getAllNature();

    // allCountries = await ApiHelper.apiHelper.getAllCountry();

    allAirCrafts = await ApiHelper.apiHelper.getAllAirCraft();

    allAirLines = await ApiHelper.apiHelper.getAllAirLine();

    allAirPorts = await ApiHelper.apiHelper.getAllAirPort();

    allAnimals = await ApiHelper.apiHelper.getAllAnimal();

    allCaloriesBurnedActivities =
        await ApiHelper.apiHelper.getAllCaloriesBurnedActivity();

    allCats = await ApiHelper.apiHelper.getAllCat();

    allCelebrities = await ApiHelper.apiHelper.getAllCelebrity();

    allCities = await ApiHelper.apiHelper.getAllCity();

    allCocktails = await ApiHelper.apiHelper.getAllCocktail();

    allDogs = await ApiHelper.apiHelper.getAllDog();

    allEmojis = await ApiHelper.apiHelper.getAllEmoji();

    allExercises = await ApiHelper.apiHelper.getAllExercise();

    allHelicopterManufacturers =
        await ApiHelper.apiHelper.getAllHelicopterManufacturer();

    allHistoricalEvents = await ApiHelper.apiHelper.getAllHistoricalEvent();

    allHistoricalMans = await ApiHelper.apiHelper.getAllHistoricalMan();

    allHolidays = await ApiHelper.apiHelper.getAllHoliday();

    allCountryWithInterestRates =
        await ApiHelper.apiHelper.getAllCountryWithInterestRate();

    allCompanyLogos = await ApiHelper.apiHelper.getAllCompanyLogo();

    allQuotes = await ApiHelper.apiHelper.getAllQuote();

    allRecipes = await ApiHelper.apiHelper.getAllRecipe();

    allRiddles = await ApiHelper.apiHelper.getAllRiddle();

    allSwiftCodes = await ApiHelper.apiHelper.getAllSwiftCode();

    urlLookUp = await ApiHelper.apiHelper.getAllUrl();

    commodityStock = await ApiHelper.apiHelper.getAllCommodityStock();

    notifyListeners();
  }
}
