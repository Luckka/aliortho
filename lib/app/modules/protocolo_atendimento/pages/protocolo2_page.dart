import 'package:aliortho/app/modules/protocolo_atendimento/protocolo_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Protocolo2Page extends StatelessWidget {
  const Protocolo2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Color(0xFF0E4B91),
          ),
          onPressed: () {
            Modular.to.pop();
          },
        ),
        title: const Text(
          'PROTOCOLO \nDE ATENDIMENTO',
          style: TextStyle(
            color: Color(0xFF0E4B91),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xFF0E4B91),
            ),
            onPressed: () {
              Modular.to.pop();
            },
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'O paciente deve contactar o dentista imediatamente caso aconteça perda ou quebra do alinhador. Dessa maneira, uma nova placa poderá ser confeccionada o quanto antes, evitando possíveis recidivas.',
              style: TextStyle(
                  color: Color(0xFF0E4B91), fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Usar escova de dente macia com sabão neutro para higienização, lavar com água fria para remover resíduos de saliva e alimentos. Evitar o uso de água quente, pois pode deformar o aparelho. ',
              style: TextStyle(
                  color: Color(0xFF0E4B91), fontWeight: FontWeight.bold),
            ),
          ),

          Image.asset('assets/protocolo.png')
        ],
      ),
    );
  }
}
