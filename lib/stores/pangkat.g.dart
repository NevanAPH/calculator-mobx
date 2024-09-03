// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pangkat.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PangkatStore on PangkatStore, Store {
  late final _$resultAtom = Atom(name: '_Counter.result', context: context);

  @override
  int get result {
    _$resultAtom.reportRead();
    return super.result;
  }

  @override
  set result(int value) {
    _$resultAtom.reportWrite(value, super.result, () {
      super.result = value;
    });
  }

  late final _$_CounterActionController =
  ActionController(name: '_Counter', context: context);

  @override
  void count(int base, int power) {
    final _$actionInfo =
    _$_CounterActionController.startAction(name: '_Counter.count');
    try {
      return super.count(base, power);
    } finally {
      _$_CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
result: ${result}
    ''';
  }
}