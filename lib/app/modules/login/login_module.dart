import 'login_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'package:prototype/app/modules/login/login_page.dart';

class LoginModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        $LoginController,
      ];

  static Inject get to => Inject<LoginModule>.of();

  @override
  Widget get view => LoginPage();
}
