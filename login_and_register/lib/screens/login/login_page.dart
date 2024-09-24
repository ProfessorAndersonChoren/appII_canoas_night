import 'package:flutter/material.dart';
import 'package:login_and_register/model/user_model.dart';
import 'package:login_and_register/screens/shared/custom_text_field.dart';
import 'package:email_validator/email_validator.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
              CustomTextField(
                label: 'Email',
                inputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || !EmailValidator.validate(value)) {
                    return 'Email inválido!!!';
                  }
                  return null;
                },
                controller: _emailController,
              ),
              CustomTextField(
                label: 'Senha',
                inputType: TextInputType.visiblePassword,
                isPassword: true,
                action: TextInputAction.done,
                validator: (value) {
                  if (value == null || value.length < 8) {
                    return 'Senha inválida!!!';
                  }
                  return null;
                },
                controller: _passwordController,
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    final user = UserModel(
                      email: _emailController.text,
                      password: _passwordController.text,
                    );
                    final founded = await user.login();
                    SnackBar snackBar;
                    if (founded) {
                      snackBar = const SnackBar(
                          content: Text('Bem-vindo ao nosso sistema!!!'));
                    } else {
                      snackBar = const SnackBar(
                          content: Text('Usuário ou senha inválidos!!!'));
                    }
                    // Exibir a snackbar
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
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
