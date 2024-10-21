import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AlicateMesiodistalPage extends StatelessWidget {
  const AlicateMesiodistalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.blue[900]),
          onPressed: () {
            Modular.to.pop();
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'ALICATE MESIODISTAL',
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  'Alicate com abertura na parte não ativa, onde permite uma proximidade maior com a borda incisal dos dentes, serve para as movimentações mesiodistais.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Center(
                  child: Image.asset(
                    'assets/mesiodistal.png', // substitua pelo link da sua imagem
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
