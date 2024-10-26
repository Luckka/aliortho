import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BiomecanicaPage extends StatelessWidget {
  const BiomecanicaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0E4B91),
        leading: IconButton(
          icon: Icon(Icons.menu,color: Colors.white,),
          onPressed: () {
            Modular.to.pop();
          },
        ),
        title: const Text(
          'BIOMECÂNICA',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: const Color(0xFF0E4B91),
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFF3577C2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'O Sistema Bolha depende de onde será confeccionado a bolha para a sua posterior ativação.\n\n'
                'A Bolha é o espaço para onde o dente se movimentará, o abaulamento é a ativação que deve '
                'ser apontada à direção do movimento dental.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Table(
              border: TableBorder.all(color: Colors.white),
              children: const [
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Espessura da placa',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        '0,75mm',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        '0,5mm de deflexão',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        '169gf',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Tamanho sugerido da placa e força ideal para estar dentro dos padrões biológicos.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
