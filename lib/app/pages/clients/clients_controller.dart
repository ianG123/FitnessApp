import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'clients_controller.g.dart';

@Injectable()
class ClientsController = _ClientsControllerBase with _$ClientsController;

abstract class _ClientsControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
