// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homedashboard_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomedashboardController = BindInject(
  (i) => HomedashboardController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomedashboardController on _HomedashboardControllerBase, Store {
  final _$valueAtom = Atom(name: '_HomedashboardControllerBase.value');

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

  final _$_HomedashboardControllerBaseActionController =
      ActionController(name: '_HomedashboardControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_HomedashboardControllerBaseActionController
        .startAction(name: '_HomedashboardControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_HomedashboardControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
