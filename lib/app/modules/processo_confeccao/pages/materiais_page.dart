import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MateriaisPage extends StatelessWidget {
  const MateriaisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.blue),
          onPressed: () {
            Modular.to.pop();
          },
        ),
        title: Text(
          'CONFECÇÃO',
          style: TextStyle(
            color: Color(0xff0E449C),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
       
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'DOS ALINHADORES',
              style: TextStyle(
                color: Color(0xff0E449C),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'CONFECCIONAR NO MODELO DE GESSO',
              style: TextStyle(
                  color: Color(0xff0E449C),
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: [
                  buildGridItem(
                    'assets/grid1.png', // Caminho da imagem
                    'Plastificadora',
                  ),
                  buildGridItem(
                    'assets/grid2.png', // Caminho da imagem
                    'Placa acetato (0,75mm)',
                  ),
                  buildGridItem(
                    'assets/grid3.png', // Caminho da imagem
                    'Resina Fluida',
                  ),
                  buildGridItem(
                    'assets/grid4.png', // Caminho da imagem
                    'Discos para recorte',
                  ),
                  buildGridItem(
                    'assets/grid5.png', // Caminho da imagem
                    'Rodas de desgastes\nScotch Brite',
                  ),
                  buildGridItem(
                    'assets/grid6.png', // Caminho da imagem
                    'Tesoura curva',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildGridItem(String imagePath, String label) {
    return Column(
      children: [
        Expanded(
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xff0E449C),
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
