import 'package:flutter/material.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

List<Map<String, String>> planets = [
  // {
  //   "position": "",
  //   "name": "",
  //   "image": "",
  //   "mass": "",
  //   "velocity": "",
  //   "distance_from_sun": "",
  //   "description": "",
  //   "rotational_period": "",
  //   "orbital_period": "",
  //   "gravity": "",
  //   "surface_area": "",
  //   "surface_temperature": "",
  // },
  {
    "position": "0",
    "name": "Sun",
    "image": "assets/images/SUN.png",
    "mass": "1.989 × 10³⁰ kg (333,000 times the mass of Earth)",
    "velocity":
        "Approximately 220 km/s (orbiting the center of the Milky Way galaxy)",
    "distance_from_sun": "0 km (as it is the Sun itself)",
    "description":
        "The Sun is a G-type main-sequence star (G2V), around 4.6 billion years old. It is the central star of our solar system, providing essential energy and light for life on Earth. Composed mainly of hydrogen and helium, the Sun undergoes nuclear fusion in its core, converting hydrogen into helium and releasing vast amounts of energy.A bright yellow star with a glowing surface, slightly orange in color, with visible sunspots. It emits intense light and has a halo-like corona visible during solar eclipses.",
    "rotational_period":
        "About 25 days at the equator and up to 35 days near the poles (differential rotation)",
    "orbital_period":
        "About 230 million years (to orbit the center of the Milky Way galaxy)",
    "gravity": "274 m/s² (28 times that of Earth's gravity)",
    "surface_area": "6.09 × 10¹² km² (12,000 times the surface area of Earth)",
    "surface_temperature": "Approximately 5,500°C (9,932°F)"
  },
  {
    "position": "1",
    "name": "Mercury",
    "image": "assets/images/MERCURY.png",
    "mass": "3.3011 × 10²³ kg (about 0.055 times the mass of Earth)",
    "velocity": "47.87 km/s (average orbital speed around the Sun)",
    "distance_from_sun": "Approximately 57.91 million km (0.39 AU)",
    "description":
        "Mercury is the smallest and innermost planet in the Solar System. It has a heavily cratered surface and experiences extreme temperature fluctuations. Due to its proximity to the Sun, it has no atmosphere to retain heat, leading to scorching temperatures during the day and freezing temperatures at night.A small, rocky planet with a grayish surface covered in craters, similar in appearance to the Moon. Mercury has a barren, desolate landscape with no atmosphere to smooth out the craters.",
    "rotational_period": "58.6 Earth days",
    "orbital_period": "88 Earth days",
    "gravity": "3.7 m/s² (about 0.38 times that of Earth)",
    "surface_area":
        "7.48 × 10⁷ km² (about 0.147 times the surface area of Earth)",
    "surface_temperature":
        "Ranges from -173°C (-279°F) at night to 427°C (800°F) during the day"
  },
  {
    "position": "2",
    "name": "Venus",
    "image": "assets/images/VENUS.png",
    "mass": "4.867 × 10²⁴ kg (about 0.82 times the mass of Earth)",
    "velocity": "35.02 km/s (average orbital speed around the Sun)",
    "distance_from_sun": "Approximately 108.2 million km (0.72 AU)",
    "description":
        "Venus is often called Earth's 'sister planet' due to its similar size and composition. However, its surface conditions are extreme, with a thick atmosphere that traps heat, resulting in surface temperatures hot enough to melt lead. Venus has a very slow rotation, and its day is longer than its year. The planet's atmosphere is primarily carbon dioxide, with clouds of sulfuric acid, making it inhospitable to life as we know it.A bright, yellowish planet with a thick, swirling atmosphere composed mostly of carbon dioxide. Venus's surface is obscured by dense clouds of sulfuric acid, giving it a smooth, featureless appearance from space.",
    "rotational_period": "243 Earth days (retrograde rotation)",
    "orbital_period": "225 Earth days",
    "gravity": "8.87 m/s² (about 0.9 times that of Earth)",
    "surface_area":
        "4.60 × 10⁸ km² (about 0.9 times the surface area of Earth)",
    "surface_temperature": "Approximately 465°C (869°F)"
  },
  {
    "position": "3",
    "name": "Earth",
    "image": "assets/images/EARTH.png",
    "mass": "5.972 × 10²⁴ kg",
    "velocity": "29.78 km/s (average orbital speed around the Sun)",
    "distance_from_sun": "Approximately 149.6 million km (1 AU)",
    "description":
        "Earth is the third planet from the Sun and the only known place in the universe to support life. It has a diverse environment, with liquid water, an atmosphere rich in oxygen, and a variety of ecosystems. Earth's surface is 71% water, and it has a balanced climate system that supports a wide range of life forms.A vibrant planet with blue oceans, green and brown landmasses, and white clouds. Earth has a dynamic atmosphere and visible polar ice caps.",
    "rotational_period": "24 hours (1 Earth day)",
    "orbital_period": "365.25 days (1 Earth year)",
    "gravity": "9.81 m/s²",
    "surface_area": "510.1 million km²",
    "surface_temperature":
        "Average surface temperature is approximately 15°C (59°F)"
  },
  {
    "position": "4",
    "name": "Mars",
    "image": "assets/images/MARS.png",
    "mass": "6.39 × 10²³ kg (about 0.11 times the mass of Earth)",
    "velocity": "24.077 km/s (average orbital speed around the Sun)",
    "distance_from_sun": "Approximately 227.9 million km (1.52 AU)",
    "description":
        "Mars, often called the 'Red Planet,' is the fourth planet from the Sun. It has the largest volcano in the solar system, Olympus Mons, and a vast canyon system, Valles Marineris. Mars has a thin atmosphere, mostly composed of carbon dioxide, and is known for its potential to have once harbored life. The planet experiences seasons similar to Earth but has much colder temperatures.A reddish planet with a dusty, rocky surface, featuring large volcanoes, deep valleys, and polar ice caps. The reddish color is due to iron oxide (rust) on its surface.",
    "rotational_period": "24.6 hours (1 Sol, similar to an Earth day)",
    "orbital_period": "687 Earth days (about 1.88 Earth years)",
    "gravity": "3.721 m/s² (about 0.38 times that of Earth)",
    "surface_area":
        "144.8 million km² (about 0.28 times the surface area of Earth)",
    "surface_temperature":
        "Ranges from -125°C (-195°F) in winter to 20°C (68°F) in summer"
  },
  {
    "position": "5",
    "name": "Jupiter",
    "image": "assets/images/JUPITER.png",
    "mass": "1.898 × 10²⁷ kg (about 318 times the mass of Earth)",
    "velocity": "13.07 km/s (average orbital speed around the Sun)",
    "distance_from_sun": "Approximately 778.5 million km (5.2 AU)",
    "description":
        "Jupiter is the largest planet in our solar system, known for its strong magnetic field and its dozens of moons, including the four large Galilean moons: Io, Europa, Ganymede, and Callisto. As a gas giant, it lacks a solid surface, and its atmosphere is mostly hydrogen and helium. The Great Red Spot, a persistent high-pressure region producing an anticyclonic storm, is a prominent feature on Jupiter.A massive gas giant with bands of clouds in shades of white, orange, brown, and red. The planet features the Great Red Spot, a giant storm larger than Earth, and numerous smaller storms.",
    "rotational_period": "Approximately 9.9 hours (shortest day of any planet)",
    "orbital_period": "11.86 Earth years",
    "gravity": "24.79 m/s² (about 2.53 times that of Earth)",
    "surface_area":
        "6.14 × 10¹⁰ km² (about 121 times the surface area of Earth)",
    "surface_temperature":
        "Average cloud top temperature is approximately -145°C (-234°F)"
  },
  {
    "position": "6",
    "name": "Saturn",
    "image": "assets/images/SATURN.png",
    "mass": "5.683 × 10²⁶ kg (about 95 times the mass of Earth)",
    "velocity": "9.68 km/s (average orbital speed around the Sun)",
    "distance_from_sun": "Approximately 1.434 billion km (9.58 AU)",
    "description":
        "Saturn is the second-largest planet in our solar system, best known for its extensive ring system, which is the most complex and spectacular in the solar system. The planet is a gas giant composed primarily of hydrogen and helium, with a small, dense core. Saturn has at least 82 moons, including Titan, which is larger than the planet Mercury and has a thick atmosphere.A large gas giant with a pale yellow and gold banded atmosphere, surrounded by a stunning system of icy rings. The rings are composed of countless small particles, ranging in size from micrometers to meters.",
    "rotational_period": "Approximately 10.7 hours",
    "orbital_period": "29.5 Earth years",
    "gravity": "10.44 m/s² (about 1.06 times that of Earth)",
    "surface_area":
        "4.27 × 10¹⁰ km² (about 83 times the surface area of Earth)",
    "surface_temperature":
        "Average cloud top temperature is approximately -178°C (-288°F)"
  },
  {
    "position": "7",
    "name": "Uranus",
    "image": "assets/images/URANUS.png",
    "mass": "8.681 × 10²⁵ kg (about 14.5 times the mass of Earth)",
    "velocity": "6.81 km/s (average orbital speed around the Sun)",
    "distance_from_sun": "Approximately 2.871 billion km (19.2 AU)",
    "description":
        "Uranus is an ice giant known for its unique tilt, with its axis nearly parallel to its orbital plane, making it appear to roll along its orbit. The planet has a faint ring system and 27 known moons. Its atmosphere is primarily composed of hydrogen, helium, and methane, which gives it its distinctive blue-green color.A blue-green gas giant with a faint ring system and a relatively featureless appearance due to its thick atmosphere. The planet’s blue color is due to methane in its atmosphere.",
    "rotational_period": "Approximately 17.24 hours",
    "orbital_period": "84 Earth years",
    "gravity": "8.69 m/s² (about 0.89 times that of Earth)",
    "surface_area":
        "8.11 × 10¹² km² (about 64 times the surface area of Earth)",
    "surface_temperature":
        "Average temperature is approximately -224°C (-371°F)"
  },
  {
    "position": "8",
    "name": "Neptune",
    "image": "assets/images/NEPTUNE.png",
    "mass": "1.024 × 10²⁶ kg (about 17 times the mass of Earth)",
    "velocity": "5.43 km/s (average orbital speed around the Sun)",
    "distance_from_sun": "Approximately 4.495 billion km (30.1 AU)",
    "description":
        "Neptune is the eighth and farthest planet from the Sun, known for its vivid blue color and strong winds. It has a complex ring system and 14 known moons, including Triton, which is one of the largest moons in the solar system and has geysers of nitrogen. Neptune's atmosphere is composed primarily of hydrogen, helium, and methane.A deep blue gas giant with a striking color caused by methane in its atmosphere. The planet has a system of faint rings and several dark storm systems, including the Great Dark Spot.",
    "rotational_period": "Approximately 16.08 hours",
    "orbital_period": "164.8 Earth years",
    "gravity": "11.15 m/s² (about 1.14 times that of Earth)",
    "surface_area":
        "7.64 × 10¹² km² (about 60 times the surface area of Earth)",
    "surface_temperature":
        "Average temperature is approximately -214°C (-353°F)"
  },
  {
    "position": "9",
    "name": "Pluto",
    "image": "assets/images/PLUTO.png",
    "mass": "1.303 × 10²² kg (about 0.00218 times the mass of Earth)",
    "velocity": "4.74 km/s (average orbital speed around the Sun)",
    "distance_from_sun": "Approximately 5.9 billion km (39.5 AU)",
    "description":
        "Pluto is a dwarf planet located in the Kuiper Belt, a region of the solar system beyond Neptune. It has a highly elliptical orbit that sometimes brings it closer to the Sun than Neptune. Pluto has a complex surface with a mix of ices and rocks, and it features a thin atmosphere that expands and contracts with its orbit. It has five known moons: Charon, Styx, Nix, Kerberos, and Hydra.A small, icy world with a reddish surface and a varied terrain, including mountains, plains, and ice. It has a thin, hazy atmosphere and several moons.",
    "rotational_period": "6.39 Earth days",
    "orbital_period": "248 Earth years",
    "gravity": "0.62 m/s² (about 0.063 times that of Earth)",
    "surface_area":
        "1.77 × 10⁷ km² (about 0.03 times the surface area of Earth)",
    "surface_temperature": "Ranges from -223°C (-369°F) to -233°C (-387°F)"
  }
];
