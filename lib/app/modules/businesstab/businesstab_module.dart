import 'businesstab_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'package:prototype/app/modules/businesstab/businesstab_page.dart';

class BusinesstabModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        $BusinesstabController,
      ];

  static Inject get to => Inject<BusinesstabModule>.of();

  @override
  Widget get view => BusinesstabPage();
}
