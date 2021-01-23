import 'package:prototype/app/modules/login/login_page.dart';
import 'package:prototype/app/pages/home/home_controller.dart';
import 'package:prototype/app/pages/settings/settings_controller.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:prototype/app/app_widget.dart';
import 'package:prototype/app/modules/home/home_module.dart';

import 'modules/batteriesdashboard/batteriesdashboard_controller.dart';
import 'modules/businesstab/businesstab_controller.dart';
import 'modules/clientdashboard/clientdashboard_controller.dart';
import 'modules/grouptab/grouptab_controller.dart';
import 'modules/homedashboard/homedashboard_controller.dart';
import 'modules/login/login_controller.dart';
import 'modules/restorepasword/restorepasword_controller.dart';
import 'modules/settingsdashbaord/settingsdashbaord_controller.dart';
import 'modules/signup/signup_controller.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SettingsController()),
        Bind((i) => HomeController()),
        Bind((i) => GrouptabController()),
        Bind((i) => BusinesstabController()),
        Bind((i) => BatteriesdashboardController()),
        Bind((i) => ClientdashboardController()),
        Bind((i) => SettingsdashbaordController()),
        Bind((i) => LoginController()),
        Bind((i) => RestorepaswordController()),
        Bind((i) => SignupController()),
        Bind((i) => HomedashboardController()),
        Bind((i) => AppController()),
      ];

  @override
  List<ModularRouter> get routers => [
        // ModularRouter(Modular.initialRoute, module: HomeModule()),
        ModularRouter('/', child: (_, __) => LoginPage()),
        // ModularRouter('/login', child: (_, __) => LoginPage()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
