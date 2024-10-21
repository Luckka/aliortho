import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MicroRampaPage extends StatelessWidget {
  const MicroRampaPage({super.key});

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
                'FORMADOR DE\nMICRO-RAMPA',
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  'Alicate com parte ativa mais delicada, angulada, tem finalidade de formar micro-ativações em regiões de difícil acesso. Pode utilizar em giroversões, ajuste de torque e movimentos mesiodistais.',
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
                    'assets/microRampa.png', // substitua pelo link da sua imagem
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
