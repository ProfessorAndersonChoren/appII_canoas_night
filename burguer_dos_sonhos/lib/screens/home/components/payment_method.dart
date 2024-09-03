import 'package:burguer_dos_sonhos/enums/payments.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatelessWidget {
  var _selected = Payments.creditCard;
  PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile<Payments>(
          value: Payments.creditCard,
          groupValue: _selected,
          onChanged: (value) {},
          title: const Text('Cartão de crédito'),
        ),
        RadioListTile<Payments>(
          value: Payments.debitCard,
          groupValue: _selected,
          onChanged: (value) {},
          title: const Text('Cartão de débito'),
        ),
        RadioListTile<Payments>(
          value: Payments.pix,
          groupValue: _selected,
          onChanged: (value) {},
          title: const Text('Pix'),
        ),
      ],
    );
  }
}
