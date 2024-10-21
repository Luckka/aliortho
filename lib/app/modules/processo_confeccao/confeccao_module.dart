import 'package:aliortho/app/modules/processo_confeccao/pages/bolhas_page.dart';
import 'package:aliortho/app/modules/processo_confeccao/pages/materiais_page.dart';
import 'package:aliortho/app/modules/processo_confeccao/pages/menu_confeccao_page.dart';
import 'package:aliortho/app/modules/processo_confeccao/pages/moldagem_page.dart';
import 'package:aliortho/app/modules/processo_confeccao/pages/termoplastificacao_page.dart';
import 'package:aliortho/app/modules/processo_confeccao/pages/vazamento_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ConfeccaoModule extends Module{
  @override
  // TODO: implement binds
  List<Bind<Object>> get binds => super.binds;



  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
    ChildRoute(Modular.initialRoute, child: (args,context) => const MenuConfeccaoPage()),
    ChildRoute('/materiais', child: (args,context) => const MateriaisPage()),
    ChildRoute('/moldagem', child: (args,context) => const MoldagemPage()),
    ChildRoute('/bolhas', child: (args,context) => const BolhasPage()),
    ChildRoute('/vazamento', child: (args,context) => const VazamentoPage()),
    ChildRoute('/termo', child: (args,context) => const TermoplastificacaoPage())
  ];
}