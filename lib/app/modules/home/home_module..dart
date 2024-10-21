import 'package:aliortho/app/app_routes.dart';
import 'package:aliortho/app/modules/home/pages/home_menu_page.dart';
import 'package:aliortho/app/modules/home/pages/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module{
  @override
  List<ModularRoute> get routes => [
      ChildRoute(AppRoutes.initial, child: (args,child) => const HomePage()),
      ChildRoute(AppRoutes.menu, child: (args,child) => const HomeMenuPage()),
     
  ];
}