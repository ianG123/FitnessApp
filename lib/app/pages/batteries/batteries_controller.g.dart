// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batteries_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $BatteriesController = BindInject(
  (i) => BatteriesController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BatteriesController on _BatteriesControllerBase, Store {
  final _$valueAtom = Atom(name: '_BatteriesControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_BatteriesControllerBaseActionController =
      ActionController(name: '_BatteriesControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_BatteriesControllerBaseActionController.startAction(
        name: '_BatteriesControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_BatteriesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
