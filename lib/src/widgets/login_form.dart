import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _email = 'horellanar@unah.hn';
  String _password = '20192001334';

  void login() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save(); // Guardar los valores del formulario

      // Verificar los datos ingresados
      if (_email == "horellanar@unah.hn" && _password == "20192001334") {
        // Datos correctos, mostrar pantalla de bienvenida
        Navigator.pushNamed(context, '/welcome');
      } else {
        // Datos incorrectos, mostrar mensaje de error
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Usuario o contraseña incorrectos.'),
            duration: Duration(seconds: 3),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: 'Correo Institucional',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingresa tu correo institucional.';
              }
              return null;
            },
            onSaved: (value) {
              _email = value ?? '';
            },
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: 'Contraseña',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, ingresa tu contraseña.';
              }
              return null;
            },
            onSaved: (value) {
              _password = value ?? '';
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: login,
            child: const Text('Iniciar Sesión'),
          ),
        ],
      ),
    );
  }
}
