import 'package:mobx/mobx.dart';

part 'bangunruang.g.dart';

class BangunRuang = BangunRuangStore with _$BangunRuangStore;

abstract class BangunRuangStore with Store {
  @observable
  double? value;

  @action
  void hitungKelilingLuasPersegi(double panjang, double lebar, double tinggi) {
    value = (panjang + lebar + tinggi) * 2;
  }

  @action
  void hitungKelilingLuasPrisma(double sisi, double alas, double tinggi) {
    value = (sisi * 4) + (alas * 2) + tinggi;
  }
}