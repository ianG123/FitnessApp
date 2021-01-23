import 'batteries_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'package:prototype/app/pages/batteries/batteries_page.dart';

class BatteriesModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        $BatteriesController,
      ];

  static Inject get to => Inject<BatteriesModule>.of();

  @override
  Widget get view => BatteriesPage();
}
