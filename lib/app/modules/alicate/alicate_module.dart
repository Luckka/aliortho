import 'package:aliortho/app/app_routes.dart';
import 'package:aliortho/app/modules/alicate/pages/alicate_mesiodistal_page.dart';
import 'package:aliortho/app/modules/alicate/pages/ameias_page.dart';
import 'package:aliortho/app/modules/alicate/pages/ativacao_page.dart';
import 'package:aliortho/app/modules/alicate/pages/ativacao_step2_page.dart';
import 'package:aliortho/app/modules/alicate/pages/circulo_grande_page.dart';
import 'package:aliortho/app/modules/alicate/pages/dentes_mandibulares_page.dart';
import 'package:aliortho/app/modules/alicate/pages/dentes_maxilares_page.dart';
import 'package:aliortho/app/modules/alicate/pages/menu_alicate_page.dart';
import 'package:aliortho/app/modules/alicate/pages/micro_rampa_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AlicateModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(AppRoutes.initial,
            child: (args, context) => const MenuAlicatePage()),
        ChildRoute(AppRoutes.dentesMaxilares,
            child: (args, context) => const DentesMaxilaresPage()),
        ChildRoute('/dentes-mandibular',
            child: (args, context) => const DentesMandibularesPage()),
        ChildRoute('/micro-rampa',
            child: (args, context) => const MicroRampaPage()),
        ChildRoute('/mesiodistal',
            child: (args, context) => const AlicateMesiodistalPage()),
        ChildRoute('/ameias', child: (args, context) => const AmeiasPage()),

        ChildRoute('/circulo-grande',
            child: (args, context) => const CirculoGrandePage()),
        ChildRoute('/ativacao',
            child: (args, context) => const AtivacaoPage()),
        ChildRoute('/ativacao2',
        child: (args, context) => const AtivacaoStep2Page()),
      ];
}
