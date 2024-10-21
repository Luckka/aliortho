import 'package:aliortho/app/modules/alicate/alicate_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MenuAlicatePage extends StatelessWidget {
  const MenuAlicatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue[900]!, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'ALICATES',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  MenuButton(
                    label: 'MOVIMENTAÇÃO DE DENTES MAXILARES',
                    onPressed: () {
                     AlicateRouter.goToDenteMaxilar();
                    },
                  ),
                  MenuButton(
                    label: 'MOVIMENTAÇÃO DE DENTES MANDIBULARES ',
                    onPressed: () {
                      AlicateRouter.goToDenteMandibular();
                    },
                  ),
                  MenuButton(
                    label: 'FORMADOR DE MICRO-RAMPA',
                    onPressed: () {
                      AlicateRouter.goToMicroRampa();
                    },
                  ),
                  MenuButton(
                    label: 'ALICATE MESIODISTAL',
                    onPressed: () {
                      AlicateRouter.goToMesiodistal();
                    },
                  ),
                  MenuButton(
                    label: 'REFORÇO DE AMEIAS',
                    onPressed: () {
                      AlicateRouter.goToAmeias();
                    },
                  ),
                  MenuButton(
                    label: 'FORMADOR DE CÍRCULO GRANDE',
                    onPressed: () {
                      AlicateRouter.goToCirculoGrande();
                    },
                  ),
                  MenuButton(
                    label: 'PROCEDIMENTO DE ATIVAÇÃO',
                    onPressed: () {
                      AlicateRouter.gotoAtivacao();
                    },
                  ),
                  InkWell(
                      onTap: () {
                        Modular.to.pop();
                      }, child: Image.asset("assets/menuIcon.png"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const MenuButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 297,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
