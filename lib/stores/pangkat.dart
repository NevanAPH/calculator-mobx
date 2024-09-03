import 'package:mobx/mobx.dart';

part 'pangkat.g.dart';

class Pangkat = PangkatStore with _$PangkatStore;

abstract class PangkatStore with Store {
  @observable
  int result = 1;

  @action
  void count(int base, int power) {
    result = 1;
    for (int i = 0; i < power; i++) {
      result *= base;
    }
  }
}
