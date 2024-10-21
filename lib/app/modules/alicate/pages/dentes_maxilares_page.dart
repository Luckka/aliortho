import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DentesMaxilaresPage extends StatelessWidget {
  const DentesMaxilaresPage({super.key});

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
                'MOVIMENTAÇÃO DE\nDENTES MAXILARES',
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  'Alicate com ponta ativa convexa e robusta, serve para '
                  'movimentações de corpo em dentes grandes, como incisivos '
                  'centrais superiores e caninos.',textAlign: TextAlign.justify,
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
                    'assets/dente_maxilar.png', // substitua pelo link da sua imagem
                   
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