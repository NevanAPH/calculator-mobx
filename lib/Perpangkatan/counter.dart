import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
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
