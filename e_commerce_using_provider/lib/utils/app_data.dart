import 'package:e_commerce_using_provider/headers.dart';

class AppData {
  AppData._();

  static final AppData instance = AppData._();

  List<Map<String, dynamic>> product = [
    {
      "category": "watch",
      "category_image":
          "https://freesvg.org/img/Stellaris_Analog_wrist-watch.png",
      "qty": 1,
      "stock": 11,
      "title": "Classic Chronograph",
      "price": 199.99,
      "discountPercentage": 7.0,
      "rating": 4.42,
      "image":
          "https://cdn1.ethoswatches.com/media/catalog/product/cache/5b6ffe97254a86fab5749cb594365e70/f/r/frederique-constant-classics-fc-292mnb5b3b.jpg",
      "description":
          "Elegant stainless steel chronograph watch with leather strap."
    },
    {
      "category": "watch",
      "category_image":
          "https://freesvg.org/img/Stellaris_Analog_wrist-watch.png",
      "qty": 1,
      "stock": 11,
      "title": "Sporty Digital",
      "price": 79.99,
      "discountPercentage": 10.0,
      "rating": 4.44,
      "image":
          "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/617TaP0eJfL._AC_UY1000_.jpg",
      "description":
          "Water-resistant digital watch with multiple sport modes and fitness tracking."
    },
    {
      "category": "watch",
      "category_image":
          "https://freesvg.org/img/Stellaris_Analog_wrist-watch.png",
      "qty": 1,
      "stock": 11,
      "title": "Luxury Gold Edition",
      "price": 499.99,
      "discountPercentage": 12.0,
      "rating": 4.57,
      "image":
          "https://cdn.salla.sa/jqba/A7oVlrDxUOmE3fAe6n15vFfOjuPPs8UeNlcfln2G.jpg",
      "description":
          "Exquisite gold-plated watch with intricate detailing and automatic movement."
    },
    {
      "category": "watch",
      "category_image":
          "https://freesvg.org/img/Stellaris_Analog_wrist-watch.png",
      "qty": 1,
      "stock": 11,
      "title": "Casual Everyday",
      "price": 49.99,
      "discountPercentage": 5.0,
      "rating": 4.85,
      "image":
          "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/612DaAfd7fL._AC_UF1000,1000_QL80_.jpg",
      "description":
          "Simple and versatile everyday watch with a comfortable nylon strap."
    },
    {
      "category": "watch",
      "category_image":
          "https://freesvg.org/img/Stellaris_Analog_wrist-watch.png",
      "qty": 1,
      "stock": 11,
      "title": "Smart Fitness Tracker",
      "price": 129.99,
      "discountPercentage": 11.11,
      "rating": 4.94,
      "image":
          "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/61EclBYcocL._AC_UF1000,1000_QL80_.jpg",
      "description":
          "Smartwatch with fitness tracking, heart rate monitoring, and notification alerts."
    },
    {
      "category": "laptop",
      "category_image": "https://freesvg.org/img/metalmarious_Laptop.png",
      "qty": 1,
      "stock": 11,
      "brand": "Dell",
      "title": "XPS 13",
      "processor": "Intel Core i7",
      "ram": "16GB",
      "storage": "512GB SSD",
      "price": 1299.99,
      "discountPercentage": 15,
      "rating": 4.69,
      "image":
          "https://media.karousell.com/media/photos/products/2022/8/24/dell_xps_13_9370_i78550u_4k_uh_1661321195_8acc7083_progressive.jpg",
      "description":
          "The Dell XPS 13 is a powerful and sleek ultrabook with a stunning InfinityEdge display."
    },
    {
      "category": "laptop",
      "category_image": "https://freesvg.org/img/metalmarious_Laptop.png",
      "qty": 1,
      "stock": 11,
      "brand": "HP",
      "title": "Spectre x360",
      "processor": "Intel Core i5",
      "ram": "8GB",
      "storage": "256GB SSD",
      "price": 1499.95,
      "discountPercentage": 12.99,
      "rating": 4.44,
      "image": "https://mrlaptop.pk/wp-content/uploads/2020/06/15-eb0043dx.jpg",
      "description":
          "The HP Spectre x360 is a versatile 2-in-1 laptop with a stylish design and long battery life."
    },
    {
      "category": "laptop",
      "category_image": "https://freesvg.org/img/metalmarious_Laptop.png",
      "qty": 1,
      "stock": 11,
      "brand": "Lenovo",
      "title": "ThinkPad X1 Carbon",
      "processor": "Intel Core i7",
      "ram": "16GB",
      "storage": "1TB SSD",
      "price": 1699.00,
      "discountPercentage": 4.81,
      "rating": 4.09,
      "image":
          "https://5.imimg.com/data5/SELLER/Default/2022/12/GG/KD/OJ/157628571/lenovo-thinkpad-x1-carbon-gen-10-500x500.jpg",
      "description":
          "The Lenovo ThinkPad X1 Carbon is a business-oriented laptop known for its durability and excellent keyboard."
    },
    {
      "category": "laptop",
      "category_image": "https://freesvg.org/img/metalmarious_Laptop.png",
      "qty": 1,
      "stock": 11,
      "brand": "Asus",
      "title": "ROG Zephyrus G14",
      "processor": "AMD Ryzen 9",
      "ram": "32GB",
      "storage": "1TB NVMe SSD",
      "price": 999.00,
      "discountPercentage": 8.04,
      "rating": 4.21,
      "image":
          "https://adminapi.applegadgetsbd.com/storage/media/large/GA402RK-9537.jpg",
      "description":
          "The Asus ROG Zephyrus G14 is a gaming laptop with a powerful AMD Ryzen processor and a compact design."
    },
    {
      "category": "laptop",
      "category_image": "https://freesvg.org/img/metalmarious_Laptop.png",
      "qty": 1,
      "stock": 11,
      "brand": "Apple",
      "title": "MacBook Air",
      "processor": "Apple M1",
      "ram": "8GB",
      "storage": "256GB SSD",
      "price": 1999.99,
      "discountPercentage": 16.8,
      "rating": 4.83,
      "image":
          "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/51hJIsWMagL._AC_UF1000,1000_QL80_.jpg",
      "description":
          "The MacBook Air with Apple M1 chip delivers impressive performance and a sleek, lightweight design."
    },
    {
      "category": "phone",
      "category_image":
          "https://freesvg.org/img/SchoolFreeware-Animated-Smart-Phone-Black-White.png",
      "qty": 1,
      "stock": 11,
      "title": "iPhone 13",
      "price": 999.99,
      "discountPercentage": 15.58,
      "rating": 4.87,
      "image":
          "https://www.apple.com/newsroom/images/product/iphone/geo/Apple_iphone13_hero_geo_09142021_inline.jpg.large.jpg",
      "description":
          "The latest iPhone with a stunning Super Retina XDR display and advanced A15 Bionic chip."
    },
    {
      "category": "phone",
      "category_image":
          "https://freesvg.org/img/SchoolFreeware-Animated-Smart-Phone-Black-White.png",
      "qty": 1,
      "stock": 11,
      "title": "Samsung Galaxy S21",
      "price": 799.99,
      "discountPercentage": 16.49,
      "rating": 4.08,
      "image":
          "https://phonestoretn.tn/32-large_default/samsung-galaxy-s21-ultra.jpg",
      "description":
          "Powerful Android flagship featuring a vibrant AMOLED display and versatile camera system."
    },
    {
      "category": "phone",
      "category_image":
          "https://freesvg.org/img/SchoolFreeware-Animated-Smart-Phone-Black-White.png",
      "qty": 1,
      "stock": 11,
      "title": "Google Pixel 6",
      "price": 699.99,
      "discountPercentage": 13.58,
      "rating": 4.41,
      "image":
          "https://images.hindustantimes.com/tech/htmobile4/P35867/heroimage/143605-v3-google-pixel-6-mobile-phone-large-1.jpg",
      "description":
          "A top-notch camera phone with advanced AI capabilities and a sleek design."
    },
    {
      "category": "phone",
      "category_image":
          "https://freesvg.org/img/SchoolFreeware-Animated-Smart-Phone-Black-White.png",
      "qty": 1,
      "stock": 11,
      "title": "OnePlus 9",
      "price": 899.99,
      "discountPercentage": 4.81,
      "rating": 4.92,
      "image":
          "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/614cCf6bzyL._AC_UF1000,1000_QL80_.jpg",
      "description":
          "Flagship killer with a smooth 120Hz display, powerful Snapdragon processor, and Hasselblad-tuned cameras."
    },
    {
      "category": "phone",
      "category_image":
          "https://freesvg.org/img/SchoolFreeware-Animated-Smart-Phone-Black-White.png",
      "qty": 1,
      "stock": 11,
      "title": "Xiaomi Mi 11",
      "price": 749.99,
      "discountPercentage": 13.1,
      "rating": 4.21,
      "image":
          "https://i01.appmifile.com/webfile/globalimg/products/m/mi-11/overview31-img02.jpg",
      "description":
          "High-performance smartphone with a Snapdragon 888 chip, impressive display, and versatile camera setup."
    },
    {
      "category": "headphone",
      "category_image": "https://freesvg.org/img/headphone.png",
      "qty": 1,
      "stock": 11,
      "title": "Sony WH-1000XM4",
      "price": 349.99,
      "discountPercentage": 10.99,
      "rating": 4.00,
      "image":
          "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/61xHHgU0bYL._AC_UF1000,1000_QL80_.jpg",
      "description":
          "Industry-leading noise cancellation and exceptional sound quality."
    },
    {
      "category": "headphone",
      "category_image": "https://freesvg.org/img/headphone.png",
      "qty": 1,
      "stock": 11,
      "title": "Bose QuietComfort 35 II",
      "price": 299.95,
      "discountPercentage": 15.66,
      "rating": 4.43,
      "image":
          "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/81+jNVOUsJL._AC_UF1000,1000_QL80_.jpg",
      "description":
          "Renowned for comfort, with powerful noise cancellation technology."
    },
    {
      "category": "headphone",
      "category_image": "https://freesvg.org/img/headphone.png",
      "qty": 1,
      "stock": 11,
      "title": "Apple AirPods Pro",
      "price": 249.00,
      "discountPercentage": 6.18,
      "rating": 4.3,
      "image":
          "https://images.macrumors.com/article-new/2020/05/airpods-max-in-black.jpg",
      "description":
          "Wireless earbuds with active noise cancellation and a customizable fit."
    },
    {
      "category": "headphone",
      "category_image": "https://freesvg.org/img/headphone.png",
      "qty": 1,
      "stock": 11,
      "title": "Sennheiser HD 660 S",
      "price": 499.95,
      "discountPercentage": 10.23,
      "rating": 3.85,
      "image": "https://soundnews.net/uploads/HD-660S-1-of-1-5.jpg",
      "description":
          "High-quality open-back headphones for audiophiles and studio use."
    },
    {
      "category": "headphone",
      "category_image": "https://freesvg.org/img/headphone.png",
      "qty": 1,
      "stock": 11,
      "title": "JBL Tune 510BT",
      "price": 99.95,
      "discountPercentage": 4.15,
      "rating": 4.59,
      "image":
          "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/61kFL7ywsZS._AC_UF1000,1000_QL80_.jpghttps://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/61kFL7ywsZS._AC_UF1000,1000_QL80_.jpg",
      "description":
          "True wireless in-ear headphones with a compact design and strong bass."
    },
    {
      "category": "monitor",
      "category_image": "https://freesvg.org/img/monitor-fondo.pie.png",
      "brand": "REDMI",
      "qty": 1,
      "stock": 11,
      "title": "REDMI LED SCREEN",
      "price": 199.99,
      "discountPercentage": 14.15,
      "rating": 4.21,
      "image":
          "https://www.notebookcheck.net/fileadmin/Notebooks/News/_nc3/RD_teaser.png",
      "description": "Full HD 24-inch display with ultra-slim design."
    },
    {
      "category": "monitor",
      "category_image": "https://freesvg.org/img/monitor-fondo.pie.png",
      "brand": "DELL",
      "qty": 1,
      "stock": 11,
      "title": "DELL LED SCREEN",
      "price": 299.99,
      "discountPercentage": 11.02,
      "rating": 4.83,
      "image": "https://compstore.az/data/big/dell_24_inch_gaming_monitor.jpg",
      "description":
          "4K UHD 27-inch monitor with HDR support for stunning visuals."
    },
    {
      "category": "monitor",
      "category_image": "https://freesvg.org/img/monitor-fondo.pie.png",
      "brand": "LG",
      "qty": 1,
      "stock": 11,
      "title": "LG LED SCREEN",
      "price": 149.99,
      "discountPercentage": 12.96,
      "rating": 4.56,
      "image":
          "https://lcdn.altex.ro/resize/media/catalog/product/M/O/2bd48d28d1c32adea0e55139a4e6434a/MON24MP60GB_1.jpg",
      "description":
          "Curved 21.5-inch monitor for immersive viewing experience."
    },
    {
      "category": "monitor",
      "category_image": "https://freesvg.org/img/monitor-fondo.pie.png",
      "brand": "HP",
      "qty": 1,
      "stock": 11,
      "title": "HP LED SCREEN",
      "price": 399.99,
      "discountPercentage": 17.91,
      "rating": 5.00,
      "image":
          "https://www.hp.com/ca-en/shop/Html/Merch/Images/c08381246_1750x1285.jpg",
      "description":
          "Ultra-wide 34-inch QHD display for multitasking professionals."
    },
    {
      "category": "monitor",
      "category_image": "https://freesvg.org/img/monitor-fondo.pie.png",
      "brand": "XIAOMI",
      "qty": 1,
      "stock": 11,
      "title": "XIAOMI LED SCREEN",
      "price": 259.99,
      "discountPercentage": 11.02,
      "rating": 4.42,
      "image":
          "https://i02.appmifile.com/365_operator_sg/30/06/2023/8479a7c066d9b0f3729f83c52063de42.jpg",
      "description":
          "Gaming monitor with 144Hz refresh rate and adaptive sync technology."
    }
  ];
}
