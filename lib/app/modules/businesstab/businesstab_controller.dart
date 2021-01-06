import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'businesstab_controller.g.dart';

@Injectable()
class BusinesstabController = _BusinesstabControllerBase
    with _$BusinesstabController;

abstract class _BusinesstabControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
