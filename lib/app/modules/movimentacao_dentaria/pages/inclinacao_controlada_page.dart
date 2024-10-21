import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InclinacaoControladaPage extends StatelessWidget {
  const InclinacaoControladaPage({super.key});

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
                'INCLINAÇÃO CONTROLADA ',
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  'Movimento de Inclinação do eixo e em  torno do ápice: Ativação vestibular-cervical com bolha na palatina, com a ativação completa  a região palatina fica sem a bolha, movimentando somente coroa.',textAlign: TextAlign.justify,
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
                    'assets/inclinacao2.png', // substitua pelo link da sua imagem
                   
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