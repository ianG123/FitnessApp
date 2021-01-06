import 'signup_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'package:prototype/app/modules/signup/signup_page.dart';

class SignupModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        $SignupController,
      ];

  static Inject get to => Inject<SignupModule>.of();

  @override
  Widget get view => SignupPage();
}
