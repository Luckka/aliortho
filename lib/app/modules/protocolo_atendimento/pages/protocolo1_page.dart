import 'package:aliortho/app/modules/protocolo_atendimento/protocolo_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class Protocolo1Page extends StatelessWidget {
  const Protocolo1Page({super.key});

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
            icon: Icon(
              Icons.arrow_forward,
              color: Color(0xFF0E4B91),
            ),
            onPressed: () {
              ProtocoloRouter.gotoProtocolo2();
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
          Center(
            child: Container(
              width: 200,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFF0E4B91),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                'Consultas',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'As consultas podem ser realizadas de 15 em 15 dias para as devidas reativações e podem ser trocados até 90 dias. Na troca, todos o processos de confecção e reativações serão realizados novamente.',
              style: TextStyle(
                  color: Color(0xFF0E4B91), fontWeight: FontWeight.bold),
            ),
          ),

            const SizedBox(height: 50),

            Center(
            child: Container(
              width: 300,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFF0E4B91),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                'ORIENTAÇÕES AOS PACIENTES',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          const SizedBox(height: 40),

           const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'O alinhador deve ser utilizado o máximo de tempo possível, podendo ser removido para refeições e higienização.',
              style: TextStyle(
                  color: Color(0xFF0E4B91), fontWeight: FontWeight.bold),
            ),
          ),

           const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'A inserção e remoção deve ser feito primeiro na região dos molares e depois na parte anterior.',
              style: TextStyle(
                  color: Color(0xFF0E4B91), fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
