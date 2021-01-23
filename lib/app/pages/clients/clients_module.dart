import 'clients_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'package:prototype/app/pages/clients/clients_page.dart';

class ClientsModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        $ClientsController,
      ];

  static Inject get to => Inject<ClientsModule>.of();

  @override
  Widget get view => ClientsPage();
}
