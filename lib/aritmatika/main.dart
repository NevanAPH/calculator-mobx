import 'package:mobx/mobx.dart';

part 'main.g.dart';


class aritmatika = Aritmatika_store with _$AritmatikaStore;

abstract class Aritmatika_store with Store {
  @observable
  double hasil = 0;

  @action
  void penjumlahan(double angka1, double angka2) {
    hasil = angka1 + angka2;
  }

  @action
  void pengurangan(double angka1, double angka2) {
    hasil = angka1 - angka2;
  }

  @action
  void perkalian(double angka1, double angka2) {
    hasil = angka1 * angka2;
  }

  @action
  void pembagian(double angka1, double angka2) {
    hasil = angka1 / angka2;
  }

  @action
  void modulus(double angka1, double angka2) {
    hasil = angka1 % angka2;
  }
}
