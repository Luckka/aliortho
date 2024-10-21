import 'package:aliortho/app/app_routes.dart';
import 'package:aliortho/app/modules/movimentacao_dentaria/movimentacao_router.dart';
import 'package:aliortho/app/modules/processo_confeccao/confeccao_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MenuMovimentacaoPage extends StatelessWidget {
  const MenuMovimentacaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                    'MOVIMENTAÇÕES\n DENTÁRIAS ',textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  MenuButton(
                    label: 'INCLINAÇÃO DESCONTROLADA',
                    onPressed: () {
                     MovimentacaoRouter.goToMovimentacaoDescontrolada();
                    },
                  ),
                  MenuButton(
                    label: 'INCLINAÇÃO CONTROLADA',
                    onPressed: () {
                      MovimentacaoRouter.goToMovimentacaoControlada();
                    },
                  ),
                  MenuButton(
                    label: 'TORQUE(vestibular e lingual)',
                    onPressed: () {
                       MovimentacaoRouter.goToTorqueVestibular();
                    },
                  ),
                  MenuButton(
                    label: 'INTRUSÃO',
                    onPressed: () {
                      MovimentacaoRouter.goToIntrusao();
                    },
                  ),
                  MenuButton(
                    label: 'EXTRUSÃO',
                    onPressed: () {
                       MovimentacaoRouter.goToExtrusao();
                    },
                  ),
                  MenuButton(
                    label: 'GIROVERSÕES',
                    onPressed: () {
                     MovimentacaoRouter.goToGiro1();
                    },
                  ),
                  InkWell(
                      onTap: () {
                        Modular.to.navigate(AppRoutes.menu);
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
