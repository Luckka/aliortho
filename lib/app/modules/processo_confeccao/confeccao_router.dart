import 'package:flutter_modular/flutter_modular.dart';

class ConfeccaoRouter {

  static const _route = '/menu-confeccao';

  static Future<void> goToMaterias() async{
    await Modular.to.pushNamed('$_route/materiais');
  }

  static Future<void> goToMoldagem() async{
    await Modular.to.pushNamed('$_route/moldagem');
  }

   static Future<void> goToVazamento() async{
    await Modular.to.pushNamed('$_route/vazamento');
  }

   static Future<void> goToBolhas() async{
    await Modular.to.pushNamed('$_route/bolhas');
  }

   static Future<void> goToTermo() async{
    await Modular.to.pushNamed('$_route/termo');
  }
}