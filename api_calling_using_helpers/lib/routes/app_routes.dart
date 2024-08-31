import 'package:api_calling_using_helpers/headers.dart';
import 'package:api_calling_using_helpers/pages/agent_page/agent_page.dart';
import 'package:api_calling_using_helpers/pages/aircraft_page/aircraft_page.dart';
import 'package:api_calling_using_helpers/pages/airline_page/airline_page.dart';
import 'package:api_calling_using_helpers/pages/airport_page/airport_page.dart';
import 'package:api_calling_using_helpers/pages/animal_page/animal_page.dart';
import 'package:api_calling_using_helpers/pages/buddies_page/buddies_page.dart';
import 'package:api_calling_using_helpers/pages/caloriesburnedactivities_page/caloriesburnedactivities_page.dart';
import 'package:api_calling_using_helpers/pages/car_page/car_page.dart';
import 'package:api_calling_using_helpers/pages/cat_page/cat_page.dart';
import 'package:api_calling_using_helpers/pages/celebrity_page/celebrity_page.dart';
import 'package:api_calling_using_helpers/pages/ceremony_page/ceremony_page.dart';
import 'package:api_calling_using_helpers/pages/city_page/city_page.dart';
import 'package:api_calling_using_helpers/pages/cocktail_page/cocktail_page.dart';
import 'package:api_calling_using_helpers/pages/commodity_stock_page/commodity_stock_page.dart';
import 'package:api_calling_using_helpers/pages/company_logo_page/company_logo_page.dart';
import 'package:api_calling_using_helpers/pages/content_page/content_page.dart';
import 'package:api_calling_using_helpers/pages/country_page/country_page.dart';
import 'package:api_calling_using_helpers/pages/dictionary_page/dictionary_page.dart';
import 'package:api_calling_using_helpers/pages/dog_page/dog_page.dart';
import 'package:api_calling_using_helpers/pages/emoji_page/emoji_page.dart';
import 'package:api_calling_using_helpers/pages/event_page/event_page.dart';
import 'package:api_calling_using_helpers/pages/exercise_page/exercise_page.dart';
import 'package:api_calling_using_helpers/pages/game_mode_page/game_mode_page.dart';
import 'package:api_calling_using_helpers/pages/currencies_page/currencies_page.dart';
import 'package:api_calling_using_helpers/pages/helicopter_page/helicopter_page.dart';
import 'package:api_calling_using_helpers/pages/historical_event_page/historical_event_page.dart';
import 'package:api_calling_using_helpers/pages/historical_man_page/historical_man_page.dart';
import 'package:api_calling_using_helpers/pages/holiday_page/holiday_page.dart';
import 'package:api_calling_using_helpers/pages/home_page/home_page.dart';
import 'package:api_calling_using_helpers/pages/interest_rate_page/interest_rate_page.dart';
import 'package:api_calling_using_helpers/pages/level_border_page/level_border_page.dart';
import 'package:api_calling_using_helpers/pages/map_page/map_page.dart';
import 'package:api_calling_using_helpers/pages/nature_page/nature_page.dart';
import 'package:api_calling_using_helpers/pages/player_card_page/player_card_page.dart';
import 'package:api_calling_using_helpers/pages/post_page/post_page.dart';
import 'package:api_calling_using_helpers/pages/quotes_page/quotes_page.dart';
import 'package:api_calling_using_helpers/pages/recipe_page/recipe_page.dart';
import 'package:api_calling_using_helpers/pages/restaurant_page/restaurant_page.dart';
import 'package:api_calling_using_helpers/pages/riddle_page/riddle_page.dart';
import 'package:api_calling_using_helpers/pages/season_page/season_page.dart';
import 'package:api_calling_using_helpers/pages/spray_page/spray_page.dart';
import 'package:api_calling_using_helpers/pages/swiftcode_page/swiftcode_page.dart';
import 'package:api_calling_using_helpers/pages/theme_page/theme_page.dart';
import 'package:api_calling_using_helpers/pages/url_look_up_page/url_look_up_page.dart';
import 'package:api_calling_using_helpers/pages/user_page/user_page.dart';
import 'package:api_calling_using_helpers/pages/wallpaper_page/wallpaper_page.dart';
import 'package:api_calling_using_helpers/pages/weapon_page/weapon_page.dart';
import 'package:api_calling_using_helpers/pages/world_time_page/world_time_page.dart';

class AppRoutes {
  AppRoutes._();

  static final AppRoutes instance = AppRoutes._();

  String homePage = "/";
  String wallPaperPage = "wallpaper_page";
  String weaponPage = "weapon_page";
  String sprayPage = "spray_page";
  String postPage = "post_page";
  String playerCardPage = "player_card_page";
  // String restaurantPage = "restaurant_page";
  String currenciesPage = "currencies_page";
  String themePage = "theme_page";
  String seasonPage = "season_page";
  String mapPage = "map_page";
  String levelBorderPage = "level_border_page";
  String gameModePage = "game_mode_page";
  String eventPage = "event_page";
  String contentPage = "content_page";
  String ceremonyPage = "ceremony_page";
  String agentPage = "agent_page";
  String userPage = "user_page";
  String carPage = "car_page";
  String buddyPage = "buddies_page";
  String naturePage = "nature_page";
  String countryPage = "country_page";
  String airCraftPage = "aircraft_page";
  String airLinePage = "airline_page";
  String airPortPage = "airport_page";
  String animalPage = "animal_page";
  String caloriesBurnedActivityPage = "caloriesburnedactivities_page";
  String catPage = "cat_page";
  String celebrityPage = "celebrity_page";
  String cityPage = "city_page";
  String cocktailPage = "cocktail_page";
  String dictionaryPage = "dictionary_page";
  String dogPage = "dog_page";
  String emojiPage = "emoji_page";
  String exercisePage = "exercise_page";
  String helicopterPage = "helicopter_page";
  String historicalEventPage = "historical_event_page";
  String historicalManPage = "historical_man_page";
  String holidayPage = "holiday_page";
  String interestRatePage = "interest_rate_page";
  String companyLogoPage = "company_logo_page";
  String quotesPage = "quotes_page";
  String recipePage = "recipe_page";
  String riddlePage = "riddle_page";
  String swiftCodePage = "swiftcode_page";
  String urlLookUpPage = "url_look_up_page";
  String worldTimePage = "world_time_page";
  String commodityStockPage = "commodity_stock_page";

  Map<String, WidgetBuilder> routes = {
    "/": (context) => const HomePage(),
    "wallpaper_page": (context) => const WallPaperPage(),
    "weapon_page": (context) => const WeaponPage(),
    "spray_page": (context) => const SprayPage(),
    "post_page": (context) => const PostPage(),
    "player_card_page": (context) => const PlayerCardPage(),
    // "restaurant_page": (context) => const RestaurantPage(),
    "currencies_page": (context) => const CurrenciesPage(),
    "theme_page": (context) => const ThemePage(),
    "season_page": (context) => const SeasonPage(),
    "map_page": (context) => const MapPage(),
    "level_border_page": (context) => const LevelBorderPage(),
    "game_mode_page": (context) => const GameModePage(),
    "event_page": (context) => const EventPage(),
    "content_page": (context) => const ContentPage(),
    "ceremony_page": (context) => const CeremonyPage(),
    "agent_page": (context) => const AgentPage(),
    "user_page": (context) => const UserPage(),
    "car_page": (context) => const CarPage(),
    "buddies_page": (context) => const BuddyPage(),
    "nature_page": (context) => const NaturePage(),
    "country_page": (context) => const CountryPage(),
    "aircraft_page": (context) => const AirCraftPage(),
    "airline_page": (context) => const AirLinePage(),
    "airport_page": (context) => const AirPortPage(),
    "animal_page": (context) => const AnimalPage(),
    "caloriesburnedactivities_page": (context) =>
        const CaloriesBurnedActivityPage(),
    "cat_page": (context) => const CatPage(),
    "celebrity_page": (context) => const CelebrityPage(),
    "city_page": (context) => const CityPage(),
    "cocktail_page": (context) => const CockTailPage(),
    "dictionary_page": (context) => const DictionaryPage(),
    "dog_page": (context) => const DogPage(),
    "emoji_page": (context) => const EmojiPage(),
    "exercise_page": (context) => const ExercisePage(),
    "helicopter_page": (context) => const HelicopterPage(),
    "historical_event_page": (context) => const HistoricalEventPage(),
    "historical_man_page": (context) => const HistoricalManPage(),
    "holiday_page": (context) => const HoliDayPage(),
    "interest_rate_page": (context) => const InterestRatePage(),
    "company_logo_page": (context) => const CompanyLogoPage(),
    "quotes_page": (context) => const QuotesPage(),
    "recipe_page": (context) => const RecipePage(),
    "riddle_page": (context) => const RiddlePage(),
    "swiftcode_page": (context) => const SwiftCodePage(),
    "url_look_up_page": (context) => const UrlLookUpPage(),
    "world_time_page": (context) => const WorldTimePage(),
    "commodity_stock_page": (context) => const CommodityStockPage(),
  };
}
