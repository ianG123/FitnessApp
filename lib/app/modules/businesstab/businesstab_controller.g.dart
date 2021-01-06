// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'businesstab_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $BusinesstabController = BindInject(
  (i) => BusinesstabController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BusinesstabController on _BusinesstabControllerBase, Store {
  final _$valueAtom = Atom(name: '_BusinesstabControllerBase.value');

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

  final _$_BusinesstabControllerBaseActionController =
      ActionController(name: '_BusinesstabControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_BusinesstabControllerBaseActionController
        .startAction(name: '_BusinesstabControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_BusinesstabControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
