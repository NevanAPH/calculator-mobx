import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class counter = Counter with _$counter;

abstract class Counter with Store {
  @observable
  double hasil = 0;

  @action
  void lingkaran(double radius) {
    hasil = 2 * 3.14 * radius;
  }

  @action
  void persegi(double sisi) {
    hasil = 4 * sisi;
  }

  void segitiga(double sisi1, double sisi2, double sisi3) {
    hasil = sisi1 + sisi2 + sisi3;
  }
}
