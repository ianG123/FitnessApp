import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'homedashboard_controller.g.dart';

@Injectable()
class HomedashboardController = _HomedashboardControllerBase
    with _$HomedashboardController;

abstract class _HomedashboardControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
