import 'package:flutter/material.dart';

class LeagueTable extends StatelessWidget {
  const LeagueTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> tableData = [
      {
        'pos': '1',
        'club': 'Nacional',
        'logo': 'assets/images/nacional.png',
        'pl': '12',
        'gd': '+16',
        'pts': '31',
      },
      {
        'pos': '2',
        'club': 'Wanderers',
        'logo': 'assets/images/wanderers.png',
        'pl': '12',
        'gd': '+5',
        'pts': '23',
      },
      {
        'pos': '3',
        'club': 'Boston River',
        'logo': 'assets/images/boston-river.png',
        'pl': '12',
        'gd': '+9',
        'pts': '22',
      },
      // Añade más equipos según sea necesario
    ];

    return Column(
      children: [
        // Encabezado de la tabla
        Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlueAccent],
            ),
          ),
          child: const Text(
            'Tabla de posiciones',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        // Contenido de la tabla
        Expanded(
          child: SingleChildScrollView(
            child: DataTable(
              columns: const [
                DataColumn(
                  label: Text('Pos',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                DataColumn(
                  label: Text('Club',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                DataColumn(
                  label:
                      Text('Pl', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                DataColumn(
                  label:
                      Text('GD', style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                DataColumn(
                  label: Text('Pts',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
              rows: tableData.map((team) {
                return DataRow(
                  cells: [
                    DataCell(Text(team['pos'])), // Posición
                    DataCell(
                      Row(
                        children: [
                          Image.asset(
                            team['logo'],
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(width: 8),
                          Text(team['club']),
                        ],
                      ),
                    ), // Club
                    DataCell(Text(team['pl'])), // Partidos jugados
                    DataCell(Text(team['gd'])), // Diferencia de goles
                    DataCell(
                      Text(
                        team['pts'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ), // Puntos
                  ],
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
