import 'settings_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'package:prototype/app/pages/settings/settings_page.dart';

class SettingsModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        $SettingsController,
      ];

  static Inject get to => Inject<SettingsModule>.of();

  @override
  Widget get view => SettingsPage();
}
