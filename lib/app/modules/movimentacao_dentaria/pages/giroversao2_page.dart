import 'package:aliortho/app/modules/movimentacao_dentaria/movimentacao_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class GiroVersao2Page extends StatelessWidget {
  const GiroVersao2Page({super.key});

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
        actions: [
            IconButton(onPressed: (){
             Modular.to.pop();
          }, icon: const Icon(Icons.arrow_back))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'GIROVERSÃO',
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  'Movimentação de giroversão com eixo de rotação no centro de resistência: Ativações bilaterais na mesial-vestibular e na distal-palatina/lingual. Bolhas nos sentidos contrários do movimento, mesial-palatina/lingual e distal-vestibular.',textAlign: TextAlign.justify,
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
                    'assets/giro3.png', // substitua pelo link da sua imagem
                   
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Image.asset(
                    'assets/giro4.png', // substitua pelo link da sua imagem
                   
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