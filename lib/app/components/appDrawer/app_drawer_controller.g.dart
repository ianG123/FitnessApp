// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_drawer_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $AppDrawerController = BindInject(
  (i) => AppDrawerController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppDrawerController on _AppDrawerControllerBase, Store {
  final _$valueAtom = Atom(name: '_AppDrawerControllerBase.value');

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

  final _$_AppDrawerControllerBaseActionController =
      ActionController(name: '_AppDrawerControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_AppDrawerControllerBaseActionController.startAction(
        name: '_AppDrawerControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_AppDrawerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
