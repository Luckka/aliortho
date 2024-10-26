import 'package:aliortho/app/modules/pressao_bolha/pages/biomecanica_page.dart';
import 'package:aliortho/app/modules/pressao_bolha/pages/espaco1_page.dart';
import 'package:aliortho/app/modules/pressao_bolha/pages/espaco2_page.dart';
import 'package:aliortho/app/modules/pressao_bolha/pages/pressao_bolha_menu.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PressaoBolhaModule extends Module{


  @override
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (args,context) => const PressaoBolhaMenuPage()),
    ChildRoute('/biomecanica', child: (args,context) => const BiomecanicaPage()),
    ChildRoute('/espaco1', child: (args,context) => const Espaco1Page()),
    ChildRoute('/espaco2', child: (args,context) => const Espaco2Page())
  ];
}