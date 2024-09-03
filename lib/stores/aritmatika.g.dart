// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aritmatika.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AritmatikaStore on AritmatikaStore, Store {
  late final _$hasilAtom =
      Atom(name: '_AritmatikaStore.hasil', context: context);

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

  late final _$_AritmatikaStoreActionController =
      ActionController(name: '_AritmatikaStore', context: context);

  @override
  void penjumlahan(double angka1, double angka2) {
    final _$actionInfo = _$_AritmatikaStoreActionController.startAction(
        name: '_AritmatikaStore.penjumlahan');
    try {
      return super.penjumlahan(angka1, angka2);
    } finally {
      _$_AritmatikaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void pengurangan(double angka1, double angka2) {
    final _$actionInfo = _$_AritmatikaStoreActionController.startAction(
        name: '_AritmatikaStore.pengurangan');
    try {
      return super.pengurangan(angka1, angka2);
    } finally {
      _$_AritmatikaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void perkalian(double angka1, double angka2) {
    final _$actionInfo = _$_AritmatikaStoreActionController.startAction(
        name: '_AritmatikaStore.perkalian');
    try {
      return super.perkalian(angka1, angka2);
    } finally {
      _$_AritmatikaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void pembagian(double angka1, double angka2) {
    final _$actionInfo = _$_AritmatikaStoreActionController.startAction(
        name: '_AritmatikaStore.pembagian');
    try {
      return super.pembagian(angka1, angka2);
    } finally {
      _$_AritmatikaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void modulus(double angka1, double angka2) {
    final _$actionInfo = _$_AritmatikaStoreActionController.startAction(
        name: '_AritmatikaStore.modulus');
    try {
      return super.modulus(angka1, angka2);
    } finally {
      _$_AritmatikaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
hasil: ${hasil}
    ''';
  }
}
