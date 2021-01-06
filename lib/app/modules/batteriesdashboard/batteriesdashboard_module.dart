import 'batteriesdashboard_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'package:prototype/app/modules/batteriesdashboard/batteriesdashboard_page.dart';

class BatteriesdashboardModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        $BatteriesdashboardController,
      ];

  static Inject get to => Inject<BatteriesdashboardModule>.of();

  @override
  Widget get view => BatteriesdashboardPage();
}
