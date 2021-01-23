import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'app_drawer_controller.g.dart';

@Injectable()
class AppDrawerController = _AppDrawerControllerBase with _$AppDrawerController;

abstract class _AppDrawerControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
