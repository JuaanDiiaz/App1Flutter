import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    final Map<String,String> formData = {
      'nombre': 'Juan',
      'apellido': 'Castrejon',
      'correo': 'jcastrejon@gmail.com',
      'password': '123456',
      'role': 'user',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Form(
            key:formKey,
            child: Column(
              children: [
                CustomInputField(
                  formData: formData,
                  formproperty: 'nombre',
                  hintText: 'Nombre del usuario',
                  labelText: 'Nombre',
                  helperText: 'Nombre sin apellidos',
                  icon: Icons.person,
                  suffixIcon: Icons.person,
                ),
                const SizedBox(height: 20.0),
                CustomInputField(
                  formData: formData,
                  formproperty: 'apellido',
                  hintText: 'Apellido del usuario',
                  labelText: 'Apellido',
                  helperText: 'Apellido paterno',
                  icon: Icons.person,
                  suffixIcon: Icons.person,
                ),
                const SizedBox(height: 20.0),
                CustomInputField(
                  formData: formData,
                  formproperty: 'correo',
                  hintText: 'Correo del usuario',
                  labelText: 'Correo',
                  helperText: 'Correo electrónico del usuario',
                  keyboardType: TextInputType.emailAddress,
                  icon: Icons.email,
                  suffixIcon: Icons.email,
                ),
                const SizedBox(height: 20.0),
                CustomInputField(
                  formData: formData,
                  formproperty: 'password',
                  hintText: 'Contraseña del usuario',
                  labelText: 'Contraseña',
                  helperText: 'Contraseña del usuario',
                  obscureText: true,
                  icon: Icons.lock,
                  suffixIcon: Icons.lock,
                ),
                const SizedBox(height: 20.0),
                DropdownButtonFormField(
                  value : 'user',
                  items: const [
                    DropdownMenuItem(
                      value: 'user',
                      child: Text('Usuario'),  
                    ),
                    DropdownMenuItem(
                      value: 'admin',
                      child: Text('Administrador'),
                    ),
                  ], 
                  onChanged: (value){
                    formData['role'] = value ?? 'user';
                  },
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: (){
                    FocusScope.of(context).requestFocus(FocusNode());
                    if(!formKey.currentState!.validate()) return;
                  }, 
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Enviar')),
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

