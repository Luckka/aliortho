import 'package:flutter_modular/flutter_modular.dart';

class AlicateRouter {
  static const _route = "/menu-alicate";

  static Future<void> goToDenteMaxilar() async{
    await Modular.to.pushNamed('$_route/dentes-maxilares');
  }

   static Future<void> goToDenteMandibular() async{
    await Modular.to.pushNamed('$_route/dentes-mandibular');
  }

  static Future<void> goToMicroRampa() async{
    await Modular.to.pushNamed('$_route/micro-rampa');
  }

  static Future<void> goToMesiodistal() async{
    await Modular.to.pushNamed('$_route/mesiodistal');
  }

   static Future<void> goToAmeias() async{
    await Modular.to.pushNamed('$_route/ameias');
  }

   static Future<void> goToCirculoGrande() async{
    await Modular.to.pushNamed('$_route/circulo-grande');
  }

   static Future<void> gotoAtivacao() async{
    await Modular.to.pushNamed('$_route/ativacao');
  }

  
   static Future<void> gotoAtivacao2() async{
    await Modular.to.pushNamed('$_route/ativacao2');
  }
}