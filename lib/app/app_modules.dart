import 'package:aliortho/app/modules/alicate/alicate_module.dart';
import 'package:aliortho/app/modules/home/home_module..dart';
import 'package:aliortho/app/modules/protocolo_atendimento/protocolo_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/movimentacao_dentaria/movimentacao_module.dart';
import 'modules/pressao_bolha/pressao_bolha_module.dart';
import 'modules/processo_confeccao/confeccao_module.dart';

class AppModules extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: HomeModule()),
        ModuleRoute("/menu-alicate", module: AlicateModule()),
        ModuleRoute("/menu-confeccao", module: ConfeccaoModule()),
        ModuleRoute("/menu-movimentacao", module: MovimentacaoModule()),
        ModuleRoute("/menu-pressao", module: PressaoBolhaModule()),
        ModuleRoute('/protocolo', module: ProtocoloModule())
      ];
}
