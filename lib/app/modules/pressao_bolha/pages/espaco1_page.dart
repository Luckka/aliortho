import 'package:aliortho/app/modules/pressao_bolha/pressao_bolha_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Espaco1Page extends StatelessWidget {
  const Espaco1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Color(0xFF0E4B91),),
          onPressed: () {
            Modular.to.pop();
          },
        ),
        title: const Text(
          'PLANEJAMENTO\nDOS ESPAÇOS',
          style: TextStyle(
            color: Color(0xFF0E4B91),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward, color: Color(0xFF0E4B91),),
            onPressed: () {
              PressaoBolhaRouter.gotoEspaco2();
            },
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Antes de qualquer planejamento devemos verificar se o dente em questão não tem algo à sua frente que forme barreira, impedindo sua movimentação.\n\n'
              'Caso tenha, podemos optar por desgaste interproximal ou expansão de dentes próximo ao movimento.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xFF0E4B91),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Movimentação por expansão para alinhamento: Ativação lingual no dente 31 e 33 com bolha vestibular',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Image.asset(
                'assets/espaco1.png', // Substitua pelo caminho correto da imagem
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );

  }
}