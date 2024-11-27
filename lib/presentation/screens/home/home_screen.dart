import 'package:fantasy_auf/presentation/app_widgets/app_bar.dart';
import 'package:fantasy_auf/presentation/app_widgets/gameweek.dart';
import 'package:fantasy_auf/presentation/app_widgets/league_table.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Lista de imágenes o noticias para el slider
    final List<Map<String, String>> newsItems = [
      {
        'title': 'Nacional gana el clásico 3-0',
        'image': 'assets/images/nacional_news.jpg',
      },
      {
        'title': 'Fénix firma acuerdo de patrocinio',
        'image': 'assets/images/fenix_news.jpg',
      },
      {
        'title': 'Wanderers presenta su nueva camiseta',
        'image': 'assets/images/wanderers_news.jpg',
      },
    ];

    return Scaffold(
      appBar: AppBarCustom(),
      body: Column(
        children: [
          // Slider de noticias
          SizedBox(
            height: 200, // Altura del slider
            child: CarouselSlider.builder(
              itemCount: newsItems.length,
              itemBuilder: (context, index, realIndex) {
                final news = newsItems[index];
                return _buildNewsItem(news['title']!, news['image']!);
              },
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 0.95,
                enlargeCenterPage: true,
              ),
            ),
          ),

          // Resto de la pantalla (Tabla y Próximos Partidos)
          Expanded(
            child: Row(
              children: [
                // Tabla de posiciones
                Expanded(
                  child: LeagueTable(),
                ),

                // Próximos partidos
                Expanded(
                  child: Column(
                    children: [
                      // Encabezado "Próximos partidos"
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.blue,
                              Color.fromARGB(255, 42, 103, 132),
                            ],
                          ),
                        ),
                        child: const Text(
                          'Próximos partidos',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),

                      // Widget de partidos
                      Expanded(child: MatchWeekWidget()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget para construir un elemento del slider
  Widget _buildNewsItem(String title, String imagePath) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 6,
            spreadRadius: 2,
          ),
        ],
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(12),
            ),
          ),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
