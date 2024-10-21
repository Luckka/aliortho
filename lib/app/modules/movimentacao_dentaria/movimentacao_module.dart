import 'package:aliortho/app/modules/movimentacao_dentaria/pages/extrusao_page.dart';
import 'package:aliortho/app/modules/movimentacao_dentaria/pages/giroversao2_page.dart';
import 'package:aliortho/app/modules/movimentacao_dentaria/pages/giroversao_page.dart';
import 'package:aliortho/app/modules/movimentacao_dentaria/pages/inclinacao_controlada_page.dart';
import 'package:aliortho/app/modules/movimentacao_dentaria/pages/inclinacao_descontrolada_page.dart';
import 'package:aliortho/app/modules/movimentacao_dentaria/pages/intrusao_page.dart';
import 'package:aliortho/app/modules/movimentacao_dentaria/pages/menu_movimentacao_page.dart';
import 'package:aliortho/app/modules/movimentacao_dentaria/pages/torque_lingual_page.dart';
import 'package:aliortho/app/modules/movimentacao_dentaria/pages/torque_vestibular_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MovimentacaoModule extends Module{
  @override
  // TODO: implement binds
  List<Bind<Object>> get binds => super.binds;




  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (args,context) => const MenuMovimentacaoPage()),
    ChildRoute('/inclinacao-descontrolada', child: (args,context) => const InclinacaoDescontroladaPage()),
    ChildRoute('/inclinacao-controlada', child: (args,context) => const InclinacaoControladaPage()),
    ChildRoute('/torque-vestibular', child: (args,context) => const TorqueVestibularPage()),
    ChildRoute('/torque-lingual', child: (args,context) => const TorqueLingualPage()),
    ChildRoute('/intrusao', child: (args,context) => const IntrusaoPage()),
    ChildRoute('/extrusao', child: (args,context) => const ExtrusaoPage()),
    ChildRoute('/giro1', child: (args,context) => const GiroVersaoPage()),
    ChildRoute('/giro2', child: (args,context) => const GiroVersao2Page())
  ];
}