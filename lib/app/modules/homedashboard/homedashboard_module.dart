import 'homedashboard_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'package:prototype/app/modules/homedashboard/homedashboard_page.dart';

class HomedashboardModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        $HomedashboardController,
      ];

  static Inject get to => Inject<HomedashboardModule>.of();

  @override
  Widget get view => HomedashboardPage();
}
