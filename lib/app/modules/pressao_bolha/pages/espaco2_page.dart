import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Espaco2Page extends StatelessWidget {
  const Espaco2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Color(0xFF0E4B91)),
          onPressed: () {
            Modular.to.pop();
          },
        ),
        title: Text(
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
            icon: Icon(Icons.arrow_back, color: Color(0xFF0E4B91)),
            onPressed: () {
              Modular.to.pop();
            },
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color(0xFF0E4B91),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Observa-se a movimentação após ativação em ambos os dentes, e inicia-se a vestibularização do dente 32',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/espaco2.png', // Substitua pelo caminho correto da imagem
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color(0xFF0E4B91),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Foi realizado ativação lingual e bolha vestibular no dente 32, onde observamos a distância percorrida.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/espaco3.png', // Substitua pelo caminho correto da imagem
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}