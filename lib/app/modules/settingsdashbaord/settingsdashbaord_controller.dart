import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'settingsdashbaord_controller.g.dart';

@Injectable()
class SettingsdashbaordController = _SettingsdashbaordControllerBase
    with _$SettingsdashbaordController;

abstract class _SettingsdashbaordControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
