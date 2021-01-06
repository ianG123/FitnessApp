import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'batteriesdashboard_controller.g.dart';

@Injectable()
class BatteriesdashboardController = _BatteriesdashboardControllerBase
    with _$BatteriesdashboardController;

abstract class _BatteriesdashboardControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
