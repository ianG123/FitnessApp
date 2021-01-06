import 'restorepasword_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'package:prototype/app/modules/restorepasword/restorepasword_page.dart';

class RestorepaswordModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        $RestorepaswordController,
      ];

  static Inject get to => Inject<RestorepaswordModule>.of();

  @override
  Widget get view => RestorepaswordPage();
}
