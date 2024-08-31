import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:weather_app_using_getx/controllers/permission_controller.dart';
import 'package:weather_app_using_getx/controllers/weather_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    WeatherController weatherController = Get.put(WeatherController());
    void getCurrentLocation() async {
      LocationPermission locationPermission =
          await Geolocator.checkPermission();

      if (locationPermission == LocationPermission.denied ||
          locationPermission == LocationPermission.deniedForever) {
        log("Location Denied");
        LocationPermission askPermission = await Geolocator.requestPermission();
      } else {
        Position currentPosition = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.best);
        log("Latitude=${currentPosition.latitude.toString()}");
        log("Longitude=${currentPosition.longitude.toString()}");
      }
    }

    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
      ),
      body: (weatherController.weather != null)
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.fromLTRB(40, 40, 40, 20),
              // padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
              child: SizedBox(
                height: double.infinity,
                child: Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(3, -0.3),
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.deepPurple),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-3, -0.3),
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF673AB7),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, -1.2),
                      child: Container(
                        height: 300,
                        width: 600,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFFAB40),
                        ),
                      ),
                    ),
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                      child: Container(
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                      ),
                    ),
                    Obx(() {
                      return SizedBox(
                        height: double.infinity,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                getCurrentLocation();
                              },
                              child: Text(
                                weatherController.weather!.location.city,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "Good Morning",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Image(
                              image: AssetImage(
                                "assets/1.png",
                              ),
                            ),
                            const Center(
                              child: Text(
                                "Temperature",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const Center(
                              child: Text(
                                "Weather",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Center(
                              child: Text(
                                "TIME=FRIDAY-16",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            const SizedBox(height: 30),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Image(
                                        image: AssetImage(
                                          "assets/11.png",
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Sunrise",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          "Time PM",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Image(
                                        image: AssetImage(
                                          "assets/12.png",
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Sunset",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          "Time AM",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5.0),
                              child: Divider(
                                color: Colors.grey,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Image(
                                        image: AssetImage(
                                          "assets/13.png",
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "TEMP MAX",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          "CELSIUS",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 50,
                                      width: 50,
                                      child: Image(
                                        image: AssetImage(
                                          "assets/14.png",
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "TEMP MIN",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        SizedBox(height: 3),
                                        Text(
                                          "CELSIUS",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
    );
  }
}
