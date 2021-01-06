import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'clientdashboard_controller.g.dart';

@Injectable()
class ClientdashboardController = _ClientdashboardControllerBase
    with _$ClientdashboardController;

abstract class _ClientdashboardControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
