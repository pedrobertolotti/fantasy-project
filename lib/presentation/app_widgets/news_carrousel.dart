import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class NewsCarousel extends StatelessWidget {
  final List<Map<String, String>> newsItems = [
    {
      "title": "¡Nacional gana el clásico!",
      "image": "assets/images/nacional.png",
    },
    {
      "title": "Wanderers sorprende en la tabla",
      "image": "assets/images/wanderers.png",
    },
    {
      "title": "Torque asegura su posición",
      "image": "assets/images/torque.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        autoPlay: true,
        enlargeCenterPage: true,
        autoPlayInterval: const Duration(seconds: 5),
      ),
      items: newsItems.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(item["image"] ?? ""),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(0.7),
                      Colors.transparent,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    item["title"] ?? "",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
