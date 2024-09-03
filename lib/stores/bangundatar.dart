import 'package:mobx/mobx.dart';

part 'bangundatar.g.dart';

class BangunDatar = BangunDatarStore with _$BangunDatarStore;

abstract class BangunDatarStore with Store {
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

  @action
  void segitiga(double sisi1, double sisi2, double sisi3) {
    hasil = sisi1 + sisi2 + sisi3;
  }
}
