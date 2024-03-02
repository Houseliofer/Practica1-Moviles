import 'package:flutter/material.dart';
import 'package:practica1/pages/onboarding_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final txtUsername = TextFormField(
      controller: _usernameController,
      decoration: InputDecoration(labelText: 'Nombre de usuario'),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor, ingresa tu nombre de usuario';
        }
        return null;
      },
    );

    final txtPassword = TextFormField(
      controller: _passwordController,
      obscureText: true,
      decoration: InputDecoration(labelText: 'Contraseña'),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor, ingresa tu contraseña';
        }
        return null;
      },
    );

    final btnLogin = ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Inicio de sesión exitoso')),
          );
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => OnBoardingScreen()),
          );
        }
      },
      child: Text('Iniciar sesión'),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('lib/assets/personaje/logo.png', width: 150),
                SizedBox(height: 20),
                txtUsername,
                SizedBox(height: 20),
                txtPassword,
                SizedBox(height: 20),
                btnLogin,
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {}, // Handle "forgot password" action
                  child: Text('¿Olvidó su contraseña?'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
