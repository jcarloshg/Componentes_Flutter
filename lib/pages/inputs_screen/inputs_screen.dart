import 'package:components_flutter/pages/inputs_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diferentes inputs & forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: Column(
            children: const [
              CustomInputField(
                labelText: 'Nombre usuario',
                hintText: 'Nombre de la persona',
              ),
              SizedBox(height: 30),
              CustomInputField(
                labelText: 'Apellido usuario',
                hintText: 'Apellido de la persona',
              ),
              SizedBox(height: 30),
              CustomInputField(
                labelText: 'email usuario',
                hintText: 'email de la persona',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 30),
              CustomInputField(
                labelText: 'Contrasenia',
                hintText: 'Contrasenia debe ser 8 digs',
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
