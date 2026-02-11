import 'package:flutter/material.dart';

void main() => runApp(const AppFuneraria());

class AppFuneraria extends StatelessWidget {
  const AppFuneraria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "AppFuneraria",
      home: const Empleados(),
    );
  }
}

class Empleados extends StatelessWidget {
  const Empleados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Funeraria',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 50, 60, 68),
        leading: const Icon(
          Icons.church, // Icono que representa la lápida/templo
          color: Color.fromARGB(255, 201, 196, 196),
        ),
        actions: const [
          Icon(Icons.add, color: Color.fromARGB(255, 155, 154, 154)), // Representación de la cruz
          SizedBox(width: 15),
          Icon(Icons.home, color: Color.fromARGB(255, 218, 211, 211)), // Icono de casa
          SizedBox(width: 10),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          // Llamamos a nuestra función para crear 3 tarjetas
          CustomCard(
            titulo: 'Pepe',
            subtitulo: 'Proporcionar ataud o urna.',
            imageUrl: 'https://raw.githubusercontent.com/LeoRivera434/actividad7/1fc0fedf2242a1626363d0252dd2abca42576aba/2830524.png',
          ),
          CustomCard(
            titulo: 'Juan',
            subtitulo: 'Tramite de documentos legales.',
            imageUrl: 'https://raw.githubusercontent.com/LeoRivera434/actividad7/1fc0fedf2242a1626363d0252dd2abca42576aba/2830573.png',
          ),
          CustomCard(
            titulo: 'Pedro ',
            subtitulo: 'Prepara y organiza el funeral.',
            imageUrl: 'https://raw.githubusercontent.com/LeoRivera434/actividad7/1fc0fedf2242a1626363d0252dd2abca42576aba/912265.png',
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final String imageUrl;

  const CustomCard({
    super.key,
    required this.titulo,
    required this.subtitulo,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              radius: 30,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(subtitulo),
                ],
              ),
            ),
            const SizedBox(width: 16),
            const Icon(Icons.add, color: Colors.black),
          ],
        ),
      ),
    );
  }
}