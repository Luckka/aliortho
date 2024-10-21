import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ExtrusaoPage extends StatelessWidget {
  const ExtrusaoPage({super.key});

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
                'EXTRUSÃO',
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  'Movimentação de extrusão: Botão na vestibular e palatina colados no esmalte, confeccionar um espaço (bolha) na incisal, passar o elástico por fora do alinhador para ocorrer a extrusão no espaço planejado. Quanto maior o espaço entre dente e alinhador, mais acentuada será a extrusão.',textAlign: TextAlign.justify,
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
                    'assets/extrusao.png', // substitua pelo link da sua imagem
                   
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