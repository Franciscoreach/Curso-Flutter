import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mi_primera_app/entradas_de_datos/widgets/my_checkbox.dart';

class InDatos extends StatefulWidget {
  const InDatos({super.key});

  @override
  State<InDatos> createState() => _InDatosState();
}

class _InDatosState extends State<InDatos> {
  final _formKey = GlobalKey<FormState>();
  bool _checkValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entrada de Datos"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: "* Nombre"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Campo nombre es obligatorio";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              CheckboxListTile(
                value: _checkValue,
                onChanged: (bool? value) {
                  setState(() {
                    _checkValue = value!;
                  });
                },
                title: const Text("Acepto los términos y condiciones"),
              ),
              const SizedBox(height: 40),
              // const TextField(
              //   decoration: InputDecoration(
              //     labelText: "Nombre",
              //     border: OutlineInputBorder(),
              //   ),
              // ),
              // MyCheckbox(
              //   onChanged: (bool? value) {
              //     setState(() {
              //       _checkValue = value!;
              //     });
              //   },
              //   checkValue: _checkValue,
              // ),
              // Radio<int>(
              //   value: 1,
              //   groupValue: 1,
              //   onChanged: (int? value) {},
              // ),
              // Radio<int>(
              //   value: 2,
              //   groupValue: 1,
              //   onChanged: (int? value) {},
              // ),
              // Switch(
              //   value: true,
              //   onChanged: (bool value) {},
              // ),

              ElevatedButton(
                onPressed: _checkValue
                    ? () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pop(context);
                        }
                      }
                    : null,
                child: const Text("Enviar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}