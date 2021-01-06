import 'settingsdashbaord_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'package:prototype/app/modules/settingsdashbaord/settingsdashbaord_page.dart';

class SettingsdashbaordModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        $SettingsdashbaordController,
      ];

  static Inject get to => Inject<SettingsdashbaordModule>.of();

  @override
  Widget get view => SettingsdashbaordPage();
}
