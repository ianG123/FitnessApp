import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'grouptab_controller.g.dart';

@Injectable()
class GrouptabController = _GrouptabControllerBase with _$GrouptabController;

abstract class _GrouptabControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
