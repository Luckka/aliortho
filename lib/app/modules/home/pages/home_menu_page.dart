import 'package:aliortho/app/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeMenuPage extends StatelessWidget {
  const HomeMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[900]!, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'MENU',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              MenuButton(label: 'ALINHADOR PRESSÃO BOLHA', onPressed: () {  
                Modular.to.pushNamed('/menu-pressao');
              },),
              MenuButton(label: 'MOVIMENTAÇÕES DENTÁRIAS', onPressed: () { 
                Modular.to.navigate("/menu-movimentacao");
               },),
              MenuButton(label: 'PROCESSO DE CONFECÇÃO', onPressed: () {  
                Modular.to.pushNamed("/menu-confeccao");
              },),
              MenuButton(label: 'ALICATES', onPressed: () { 
                Modular.to.pushNamed(AppRoutes.menuAlicate);
               },),
              MenuButton(label: 'PROTOCOLO DE ATENDIMENTO', onPressed: () {
                Modular.to.pushNamed('/protocolo');
                },),

              
            ],
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
          foregroundColor: Colors.black, backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onPressed,
        
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 16,fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}