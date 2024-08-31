import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_using_provider/controllers/weather_controller.dart';
import 'package:weather_app_using_provider/globals.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherController weatherController =
        Provider.of<WeatherController>(context);
    WeatherController weatherControllerMethod =
        Provider.of<WeatherController>(context, listen: false);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    TextEditingController searchController = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey<FormState>();

    String backgroundImage = 'assets/rain.gif';
    if (weatherController.weather != null) {
      String condition =
          weatherController.weather!.current.condition.text.toLowerCase();
      if (condition.contains('partly cloudy')) {
        backgroundImage = 'assets/cloudthunder.gif';
      } else if (condition.contains('rain')) {
        backgroundImage = 'assets/rain.gif';
      }
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                // image: NetworkImage(
                //     "https://www.thoughtco.com/thmb/81QGhTao0s1fj7PydEBkBl7gl0U=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/521928855-56a9e2925f9b58b7d0ffac0a.jpg"),
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: (weatherController.weather == null)
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: height * 0.06,
                          ),
                          SizedBox(
                            width: width * 0.04,
                          ),
                          Text(
                            weatherController.weather!.location.name,
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.menu,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: width * 0.06,
                          ),
                          const Icon(
                            Icons.settings,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: width * 0.04,
                          ),
                        ],
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.04,
                              ),
                              TextFormField(
                                controller: searchController,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white.withOpacity(0.5),
                                  hintText: 'Enter city name',
                                  prefixIcon: const Icon(
                                    Icons.location_city,
                                    color: Colors.blueGrey,
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      Globals.globals.searchCity =
                                          searchController.text;
                                      weatherControllerMethod.fetchData();
                                    },
                                    icon: const Icon(
                                      Icons.search,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    borderSide:
                                        const BorderSide(color: Colors.grey),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    vertical: 15.0,
                                    horizontal: 20.0,
                                  ),
                                ),
                                onFieldSubmitted: (value) {
                                  Globals.globals.searchCity =
                                      searchController.text;
                                  weatherControllerMethod.fetchData();
                                },
                                onSaved: (val) {
                                  Globals.globals.searchCity = val ?? "Surat";
                                },
                              ),

                              // Padding(
                              //   padding: const EdgeInsets.all(8.0),
                              //   child: TextField(
                              //     // key: formKey,
                              //     controller: searchController,
                              //     decoration: InputDecoration(
                              //       filled: true,
                              //       fillColor: Colors.white.withOpacity(0.5),
                              //       hintText: 'Enter city name',
                              //       prefixIcon: const Icon(
                              //         Icons.location_city,
                              //         color: Colors.blueGrey,
                              //       ),
                              //       suffixIcon: IconButton(
                              //         icon: const Icon(
                              //           Icons.search,
                              //           color: Colors.blueGrey,
                              //         ),
                              //         onPressed: () {
                              //           weatherControllerMethod
                              //               .fetchData(searchController.text);
                              //           searchController.clear();
                              //         },
                              //       ),
                              //       border: OutlineInputBorder(
                              //         borderRadius: BorderRadius.circular(20.0),
                              //         borderSide: BorderSide.none,
                              //       ),
                              //       focusedBorder: OutlineInputBorder(
                              //         borderRadius: BorderRadius.circular(20.0),
                              //         borderSide:
                              //             const BorderSide(color: Colors.grey),
                              //       ),
                              //       enabledBorder: OutlineInputBorder(
                              //         borderRadius: BorderRadius.circular(20.0),
                              //         borderSide: BorderSide.none,
                              //       ),
                              //       contentPadding: const EdgeInsets.symmetric(
                              //           vertical: 15.0, horizontal: 20.0),
                              //     ),
                              //     onSubmitted: (value) {
                              //
                              //       // Globals.globals.searchCity =
                              //       //     value ?? "Surat";
                              //       searchController.clear();
                              //       // weatherProviderfalse.fetchData(value);
                              //       // searchController.clear();
                              //     },
                              //   ),
                              // ),
                              const SizedBox(
                                height: 150,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 16.0),
                                    child: Text(
                                      weatherController.weather!.current.tempC
                                          .toString(),
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 80,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0),
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: 5, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              GlassmorphicContainer(
                                width: 350,
                                height: 350,
                                borderRadius: 20,
                                blur: 20,
                                padding: const EdgeInsets.all(40),
                                alignment: Alignment.bottomCenter,
                                border: 2,
                                linearGradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    const Color(0xFFffffff).withOpacity(0.05),
                                    const Color(0xFFFFFFFF).withOpacity(0.05),
                                  ],
                                  stops: [0.1, 1],
                                ),
                                borderGradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.transparent,
                                    Colors.transparent,
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(height: height * 0.02),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(
                                            left: 15,
                                            top: 10,
                                            bottom: 10,
                                            right: 15),
                                        height: 110,
                                        width: 250,
                                        decoration: BoxDecoration(
                                            color: Colors.white24,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    const Text(
                                                      'Today, ',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 14),
                                                    ),
                                                    Text(
                                                      "${weatherController.weather!.location.localtime}",
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 14),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      weatherController.weather!
                                                          .current.tempC
                                                          .toString(),
                                                      style:
                                                          GoogleFonts.poppins(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                    ),
                                                    const Text(
                                                      ' / ',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20),
                                                    ),
                                                    Text(
                                                      weatherController.weather!
                                                          .current.tempF
                                                          .toString(),
                                                      style:
                                                          GoogleFonts.poppins(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      weatherController
                                                          .weather!
                                                          .current
                                                          .condition
                                                          .text
                                                          .toString(),
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const Spacer(),
                                            Column(
                                              children: [
                                                SizedBox(
                                                  height: height * 0.05,
                                                  child: Image.network(
                                                    'https:${weatherController.weather!.current.condition.icon}',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        weatherController
                                            .weather!.current.condition.text,
                                        style: GoogleFonts.overpass(
                                            color: Colors.white, fontSize: 22),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                const Icon(Icons.air,
                                                    color: Colors.white),
                                                Text('Wind',
                                                    style: GoogleFonts.overpass(
                                                        color: Colors.white)),
                                                Text('|',
                                                    style: GoogleFonts.overpass(
                                                        color: Colors.white)),
                                                Text(
                                                    '${weatherController.weather!.current.windKph} Km/h',
                                                    style: GoogleFonts.overpass(
                                                        color: Colors.white)),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 16.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  const Icon(
                                                      Icons.water_drop_outlined,
                                                      color: Colors.white),
                                                  Text('Hum',
                                                      style:
                                                          GoogleFonts.overpass(
                                                              color: Colors
                                                                  .white)),
                                                  Text('|',
                                                      style:
                                                          GoogleFonts.overpass(
                                                              color: Colors
                                                                  .white)),
                                                  Text(
                                                      '${weatherController.weather!.current.humidity} %',
                                                      style:
                                                          GoogleFonts.overpass(
                                                              color: Colors
                                                                  .white)),
                                                  SizedBox(
                                                      width: width * 0.000001),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
