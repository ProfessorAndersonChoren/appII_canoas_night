import 'package:burguer_dos_sonhos/enums/payments.dart';
import 'package:mobx/mobx.dart';

part 'payment_store.g.dart';

class PaymentStore = PaymentStoreBase with _$PaymentStore;

abstract class PaymentStoreBase with Store {
  @observable
  Payments _selected = Payments.creditCard;

  @action
  void changePaymentMethod(Payments value) {
    _selected = value;
  }

  Payments get selected => _selected;
}
