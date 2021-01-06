import 'clientdashboard_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'package:prototype/app/modules/clientdashboard/clientdashboard_page.dart';

class ClientdashboardModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        $ClientdashboardController,
      ];

  static Inject get to => Inject<ClientdashboardModule>.of();

  @override
  Widget get view => ClientdashboardPage();
}
