import 'package:flutter/material.dart';
import 'package:login_and_register/screens/shared/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seja bem-vindo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomTextField(
                label: 'Email',
                inputType: TextInputType.emailAddress,
              ),
              const CustomTextField(
                label: 'Senha',
                inputType: TextInputType.visiblePassword,
                isPassword: true,
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () {},
                child: const Text('Entrar'),
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                style: FilledButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.tertiary,
                ),
                child: const Text('Registre-se'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
