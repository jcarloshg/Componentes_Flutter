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
                CustomInputField(
                  labelText: 'Nombre usuario',
                  hintText: 'Nombre de la persona',
                  formProperty: 'first_name',
                  formValue: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Apellido usuario',
                  hintText: 'Apellido de la persona',
                  formProperty: 'last_name',
                  formValue: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'email usuario',
                  hintText: 'email de la persona',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValue: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  labelText: 'Contrasenia',
                  hintText: 'Contrasenia debe ser 8 digs',
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  formProperty: 'password',
                  formValue: formValues,
                ),
                const SizedBox(height: 30),
                DropdownButtonFormField<dynamic>(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(
                        value: 'Super user', child: Text('Super user')),
                    DropdownMenuItem(
                        value: 'Sr. Dev.', child: Text('Sr. Dev.')),
                    DropdownMenuItem(
                        value: 'Jr. Dev.', child: Text('Jr. Dev.')),
                  ],
                  // ignore: avoid_print
                  onChanged: (value) => formValues['role'] = value,
                ),
                ElevatedButton(
                  onPressed: () {
                    // FocusScope.of(context).requestFocus(FocusNode());

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
