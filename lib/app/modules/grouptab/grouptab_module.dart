import 'grouptab_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'package:prototype/app/modules/grouptab/grouptab_page.dart';

class GrouptabModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        $GrouptabController,
      ];

  static Inject get to => Inject<GrouptabModule>.of();

  @override
  Widget get view => GrouptabPage();
}
