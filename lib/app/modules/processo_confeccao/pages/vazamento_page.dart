import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class VazamentoPage extends StatelessWidget {
  const VazamentoPage({super.key});

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
                'VAZAMENTO',
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  'Deve ser realizado em gesso tipo IV, sendo feito somente nos dentes e gengiva, não necessitando a criação de uma base de gesso para complementar. ',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 16,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'O formato ideal é de “ferradura”, para melhorar  a qualidade da impressão  termoplástica.',
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
                    'assets/vazamento.png', // substitua pelo link da sua imagem
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
