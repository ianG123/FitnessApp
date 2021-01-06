import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'restorepasword_controller.g.dart';

@Injectable()
class RestorepaswordController = _RestorepaswordControllerBase
    with _$RestorepaswordController;

abstract class _RestorepaswordControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
