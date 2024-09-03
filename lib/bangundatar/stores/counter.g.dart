// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$counter on Counter, Store {
  late final _$hasilAtom = Atom(name: 'Counter.hasil', context: context);

  @override
  double get hasil {
    _$hasilAtom.reportRead();
    return super.hasil;
  }

  @override
  set hasil(double value) {
    _$hasilAtom.reportWrite(value, super.hasil, () {
      super.hasil = value;
    });
  }

  late final _$CounterActionController =
      ActionController(name: 'Counter', context: context);

  @override
  void lingkaran(double radius) {
    final _$actionInfo =
        _$CounterActionController.startAction(name: 'Counter.lingkaran');
    try {
      return super.lingkaran(radius);
    } finally {
      _$CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  void persegi(double sisi) {
    final _$actionInfo =
        _$CounterActionController.startAction(name: 'Counter.persegi');
    try {
      return super.persegi(sisi);
    } finally {
      _$CounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
hasil: ${hasil}
    ''';
  }
}
