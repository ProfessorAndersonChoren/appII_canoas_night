import 'package:burguer_dos_sonhos/screens/home/components/payment_method.dart';
import 'package:burguer_dos_sonhos/stores/quantity_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final quantityStore = QuantityStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Burguer dos sonhos'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'assets/ic_hamburguer.jpg',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                    'Imagine morder em um hambúrguer onde cada elemento é uma sinfonia de sabores. O Burger dos Sonhos começa com um suculento e bem temperado disco de carne bovina, grelhado à perfeição para selar todos os sucos e garantir aquela crosta irresistível. A carne é aninhada em um macio pão brioche, levemente tostado para um toque crocante.'),
                const SizedBox(height: 16),
                Text(
                  'Método de pagamento',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 12),
                PaymentMethod(),
                const SizedBox(height: 24),
                Text(
                  'Quantidade',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        quantityStore.decrement();
                      },
                      child: Text(
                        '-',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    Observer(builder: (_) {
                      return Text(
                        quantityStore.quantity,
                        style: Theme.of(context).textTheme.headlineSmall,
                      );
                    }),
                    TextButton(
                      onPressed: () {
                        quantityStore.increment();
                      },
                      child: Text(
                        '+',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
