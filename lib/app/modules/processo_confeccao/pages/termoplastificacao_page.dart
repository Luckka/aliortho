import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TermoplastificacaoPage extends StatelessWidget {
  const TermoplastificacaoPage({super.key});

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
                'TERMOPLASTIFICAÇÃO\n RECORTE E POLIMENTO',textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  'Realizar  a termoplastificação das placas no modelo. Recorte com disco de aço, deixando cerca de 1mm de cobertura que ultrapasse a margem cervical.',
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
                    'assets/termo1.png', // substitua pelo link da sua imagem
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Realizar polimento com as rodas Scotch Brite para evitar agressões à mucosa gengival.',
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
                    'assets/termo2.png', // substitua pelo link da sua imagem
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
