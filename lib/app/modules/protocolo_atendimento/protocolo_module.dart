import 'package:aliortho/app/modules/protocolo_atendimento/pages/protocolo1_page.dart';
import 'package:aliortho/app/modules/protocolo_atendimento/pages/protocolo2_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProtocoloModule extends Module{

  @override
  List<ModularRoute> get routes => [
     ChildRoute('/', child: (args,context) => const Protocolo1Page()),
     ChildRoute('/protocolo2', child: (args,context) => const Protocolo2Page())
  ];
}