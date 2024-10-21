import 'package:aliortho/app/modules/movimentacao_dentaria/movimentacao_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class GiroVersaoPage extends StatelessWidget {
  const GiroVersaoPage({super.key});

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
            MovimentacaoRouter.goToGiro2();
          }, icon: const Icon(Icons.arrow_forward))
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
                  'Giroversão com eixo de rotação na distal: Força aplicada na mesial do dente, com bolha palatina/lingual.',textAlign: TextAlign.justify,
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
                    'assets/giro1.png', // substitua pelo link da sua imagem
                   
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Image.asset(
                    'assets/giro2.png', // substitua pelo link da sua imagem
                   
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