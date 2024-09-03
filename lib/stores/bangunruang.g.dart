// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bangunruang.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BangunRuangStore on BangunRuangStore, Store {
  late final _$valueAtom =
      Atom(name: '_StoreBangunRuang.value', context: context);

  @override
  double? get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(double? value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  late final _$_StoreBangunRuangActionController =
      ActionController(name: '_StoreBangunRuang', context: context);

  @override
  void hitungKelilingLuasPersegi(double panjang, double lebar, double tinggi) {
    final _$actionInfo = _$_StoreBangunRuangActionController.startAction(
        name: '_StoreBangunRuang.hitungKelilingLuasPersegi');
    try {
      return super.hitungKelilingLuasPersegi(panjang, lebar, tinggi);
    } finally {
      _$_StoreBangunRuangActionController.endAction(_$actionInfo);
    }
  }

  @override
  void hitungKelilingLuasPrisma(double sisi, double alas, double tinggi) {
    final _$actionInfo = _$_StoreBangunRuangActionController.startAction(
        name: '_StoreBangunRuang.hitungKelilingLuasPrisma');
    try {
      return super.hitungKelilingLuasPrisma(sisi, alas, tinggi);
    } finally {
      _$_StoreBangunRuangActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
