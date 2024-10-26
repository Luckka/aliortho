import 'package:flutter_modular/flutter_modular.dart';

class PressaoBolhaRouter {

  static const _router = '/menu-pressao';


  static Future<void> goToBio() async{
    await Modular.to.pushNamed('$_router/biomecanica');
  }

   static Future<void> gotoEspaco1() async{
    await Modular.to.pushNamed('$_router/espaco1');
  }

  static Future<void> gotoEspaco2() async{
    await Modular.to.pushNamed('$_router/espaco2');
  }

}