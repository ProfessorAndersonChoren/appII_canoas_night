import 'package:mobx/mobx.dart';

part 'quantity_store.g.dart';

class QuantityStore = QuantityStoreBase with _$QuantityStore;

abstract class QuantityStoreBase with Store {
  @observable
  int _quantity = 1;

  String get quantity => _quantity.toString();

  @action
  void increment() => _quantity++;

  @action
  void decrement() => {if (_quantity > 1) _quantity--};
}
