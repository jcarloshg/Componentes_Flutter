import 'package:components_flutter/pages/inputs_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Pablo',
      'last_name': 'Villareal',
      'email': 'pablo@email.com',
      'password': '123546',
      'role': 'admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Diferentes inputs & forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const CustomInputField(
                  labelText: 'Nombre usuario',
                  hintText: 'Nombre de la persona',
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: 'Apellido usuario',
                  hintText: 'Apellido de la persona',
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: 'email usuario',
                  hintText: 'email de la persona',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: 'Contrasenia',
                  hintText: 'Contrasenia debe ser 8 digs',
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!myFormKey.currentState!.validate()) {
                      // ignore: avoid_print
                      print("NOT valid");
                      return;
                    }
                    // ignore: avoid_print
                    print(formValues);
                  },
                  child: const SizedBox(
                    child: Center(child: Text("Guardar")),
                    width: double.infinity,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
