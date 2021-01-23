import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'batteries_controller.g.dart';

@Injectable()
class BatteriesController = _BatteriesControllerBase with _$BatteriesController;

abstract class _BatteriesControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
