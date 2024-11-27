import 'package:flutter/material.dart';

class MatchWeekWidget extends StatelessWidget {
  // Datos de los partidos con equipos uruguayos
  final Map<String, List<Map<String, dynamic>>> matchData = {
    "Viernes 29 Noviembre": [
      {
        "homeTeam": "Nacional",
        "homeLogo": "assets/images/nacional.png",
        "awayTeam": "Fénix",
        "awayLogo": "assets/images/fenix.png",
        "time": "17:00",
      },
    ],
    "Sábado 30 Noviembre": [
      {
        "homeTeam": "Racing",
        "homeLogo": "assets/images/racing.png",
        "awayTeam": "Wanderers",
        "awayLogo": "assets/images/wanderers.png",
        "time": "12:00",
      },
      {
        "homeTeam": "Boston River",
        "homeLogo": "assets/images/boston-river.png",
        "awayTeam": "Torque",
        "awayLogo": "assets/images/torque.png",
        "time": "15:00",
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: matchData.entries.map((dayEntry) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Título del día
              Container(
                width: double.infinity,
                color: Colors.blue,
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  dayEntry.key,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              // Partidos del día
              ...dayEntry.value.map((match) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    leading: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          match["homeLogo"],
                          height: 30,
                          width: 30,
                        ),
                        const SizedBox(width: 8),
                        Text(match["homeTeam"],
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    title: Center(
                      child: Text(
                        match["time"],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(match["awayTeam"],
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        const SizedBox(width: 8),
                        Image.asset(
                          match["awayLogo"],
                          height: 30,
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ],
          );
        }).toList(),
      ),
    );
  }
}
