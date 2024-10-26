import 'package:flutter_modular/flutter_modular.dart';

class ProtocoloRouter{

  static const _router = '/protocolo';

   static Future<void> gotoProtocolo2() async{
    await Modular.to.pushNamed('$_router/protocolo2');
  }
}
