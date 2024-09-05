import 'package:burguer_dos_sonhos/enums/payments.dart';
import 'package:burguer_dos_sonhos/stores/payment_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class PaymentMethod extends StatelessWidget {
  final paymentStore = PaymentStore();
  PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Column(
        children: [
          RadioListTile<Payments>(
            value: Payments.creditCard,
            groupValue: paymentStore.selected,
            onChanged: (value) {
              paymentStore.changePaymentMethod(value!);
            },
            title: const Text('Cartão de crédito'),
          ),
          RadioListTile<Payments>(
            value: Payments.debitCard,
            groupValue: paymentStore.selected,
            onChanged: (value) {
              paymentStore.changePaymentMethod(value!);
            },
            title: const Text('Cartão de débito'),
          ),
          RadioListTile<Payments>(
            value: Payments.pix,
            groupValue: paymentStore.selected,
            onChanged: (value) {
              paymentStore.changePaymentMethod(value!);
            },
            title: const Text('Pix'),
          ),
        ],
      );
    });
  }
}
