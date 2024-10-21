import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class BolhasPage extends StatelessWidget {
  const BolhasPage({super.key});

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
                'CONFECÇÃO DAS BOLHAS',
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  'A Bolha deverá ser planejada na região do movimento dentário e o abaulamento no local que será gerado a pressão no dente de escolha, para produzir a movimentação.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 16,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'O material resinoso é o mais indicado para confecção das bolhas (ex: selante de fóssulas e fissuras). Devem simular o formato do dente e sua espessura deve ser calculada de acordo com a quantidade de movimentação desejada.',
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
                    'assets/bolhas.png', // substitua pelo link da sua imagem
                  ),
                ),
              ),
               Center(
                child: Text(
                  'Bolha criada na mesma do dente 11\n para Giroversão Unilateral',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 16,
                    fontWeight: FontWeight.bold
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
