import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft, // Alinhamento inicial do gradiente
                end: Alignment.bottomRight, // Alinhamento final do gradiente
                colors: [
              Color(0xff1854B5),
              Colors.black,
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                color: Colors.white,
                onPressed: () {
                  Modular.to.navigate('/menu');
                },
                icon: const Icon(Icons.menu),
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'ALIORTHO',
              style: TextStyle(color: Colors.white, fontSize: 45),
            ),
            Container(
              color: Colors.white,
              child: const SizedBox(
                width: 300,
                height: 1,
              ),
            ),
            const SizedBox(height: 9),
            const Text('ALINHADOR PRESSÃO BOLHA',
                style: TextStyle(color: Colors.white, fontSize: 24)),
            Image.asset('assets/backgroundhome.png'),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'CRIADO POR RAYANE CAROLINA',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
