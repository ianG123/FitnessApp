// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clientdashboard_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ClientdashboardController = BindInject(
  (i) => ClientdashboardController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ClientdashboardController on _ClientdashboardControllerBase, Store {
  final _$valueAtom = Atom(name: '_ClientdashboardControllerBase.value');

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

  final _$_ClientdashboardControllerBaseActionController =
      ActionController(name: '_ClientdashboardControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_ClientdashboardControllerBaseActionController
        .startAction(name: '_ClientdashboardControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_ClientdashboardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
