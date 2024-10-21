import 'package:aliortho/app/app_modules.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app/app_widget.dart';

void main() {
  runApp(ModularApp(module: AppModules(), child: const AppWidget()));
}
