import 'app_drawer_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';


import 'app_drawer_page.dart';

class AppDrawerModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        $AppDrawerController,
      ];

  static Inject get to => Inject<AppDrawerModule>.of();

  @override
  Widget get view => AppDrawerPage();
}
