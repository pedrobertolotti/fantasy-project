import 'package:flutter/material.dart';

class AppBarCustom extends StatefulWidget implements PreferredSizeWidget {
  const AppBarCustom({
    Key? key,
  }) : super(key: key);

  @override
  _AppBarCustomState createState() => _AppBarCustomState();

  @override
  Size get preferredSize => const Size.fromHeight(110); // Altura del AppBar
}

class _AppBarCustomState extends State<AppBarCustom> {
  // Lista fija de los logos de los equipos
  final List<String> teamLogos = [
    'assets/images/nacional.png',
    'assets/images/fenix.png',
    'assets/images/racing.png',
    'assets/images/wanderers.png',
    'assets/images/boston-river.png',
    'assets/images/torque.png',
  ];

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100), // Altura total del AppBar
      child: Container(
        // Fondo blanco
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centra en el eje vertical
          children: [
            Flexible(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  color: Colors.white, // Fondo blanco
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Centra horizontalmente
                    children: teamLogos.map((logo) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 8),
                        child: Image.asset(
                          logo,
                          height: 40, // Tamaño del logo
                          fit: BoxFit.contain,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            const Divider(
              height: 1, // Altura de la línea
              color: Colors.black, // Color de la línea
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Color.fromARGB(255, 42, 103, 132)],
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                child: Row(
                  crossAxisAlignment:
                      CrossAxisAlignment.center, // Centra verticalmente
                  children: [
                    // Logo de la app
                    Image.asset(
                      'assets/icons/logo.png', // Ruta del logo de la app
                      height: 40,
                    ),
                    const Spacer(), // Empuja las opciones hacia el centro
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Centra las opciones
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Acción para ir a Inicio
                          },
                          child: const Text(
                            'INICIO',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            // Acción para ir a Fantasy
                          },
                          child: const Text(
                            'FANTASY',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(), // Asegura que todo esté centrado
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
