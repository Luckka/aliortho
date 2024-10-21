import 'package:flutter_modular/flutter_modular.dart';

class MovimentacaoRouter{
  static const _router = '/menu-movimentacao';

  static Future<void> goToMovimentacaoDescontrolada() async{
    await Modular.to.pushNamed('$_router/inclinacao-descontrolada');
  }

   static Future<void> goToMovimentacaoControlada() async{
    await Modular.to.pushNamed('$_router/inclinacao-controlada');
  }

   static Future<void> goToTorqueVestibular() async{
    await Modular.to.pushNamed('$_router/torque-vestibular');
  }

   static Future<void> goToTorqueLingual() async{
    await Modular.to.pushNamed('$_router/torque-lingual');
  }

   static Future<void> goToIntrusao() async{
    await Modular.to.pushNamed('$_router/intrusao');
  }

  
   static Future<void> goToExtrusao() async{
    await Modular.to.pushNamed('$_router/extrusao');
  }

  static Future<void> goToGiro1() async{
    await Modular.to.pushNamed('$_router/giro1');
  }

  static Future<void> goToGiro2() async{
    await Modular.to.pushNamed('$_router/giro2');
  }
}