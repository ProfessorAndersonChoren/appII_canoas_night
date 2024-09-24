import 'package:flutter/material.dart';
import 'package:login_and_register/model/user_model.dart';
import 'package:login_and_register/screens/shared/custom_text_field.dart';
import 'package:email_validator/email_validator.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registre-se'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
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
                validator: (value) {
                  if (value == null || value.length < 8) {
                    return 'Senha inválida!!!';
                  }
                  return null;
                },
                controller: _passwordController,
              ),
              CustomTextField(
                label: 'Repita sua senha',
                inputType: TextInputType.visiblePassword,
                isPassword: true,
                action: TextInputAction.done,
                validator: (value) {
                  if (value == null || value.length < 8) {
                    return 'Senha inválida!!!';
                  } else if (value != _passwordController.text) {
                    return 'As senhas não conferem!!!';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    final user = UserModel(
                      email: _emailController.text,
                      password: _passwordController.text,
                    );
                    await user.register();
                    Navigator.pop(context); // Fechar a tela
                  }
                },
                style: FilledButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.tertiary,
                ),
                child: const Text('Registrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
