import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'package:prototype/app/pages/home/home_page.dart';

class HomeModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        $HomeController,
      ];

  static Inject get to => Inject<HomeModule>.of();

  @override
  Widget get view => HomePage();
}
