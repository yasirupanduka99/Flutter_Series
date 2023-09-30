import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  //This is for form key
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _name;

  Widget _buildNameField() {
    return TextFormField(
      decoration: const InputDecoration(hintText: 'Name'),
      maxLength: 20,
      maxLines: 1,
      validator: (text) {
        //This HelperValidator class and nameValidate() method i create in bottom.
        return HelperValidator.nameValidate(text!);
      },
      //this onSaved function work when form input flied that time data will save to this function
      onSaved: (save) {
        _name = save!;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form - Tutorial 14'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            margin: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                _buildNameField(), // this is TextFormField widget, which is I create inside a function on top
                const SizedBox(height: 50), //SizedBox is use for making space
                Container(
                  child: ElevatedButton(
                    child: const Text('Submit'),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState?.save();
                        print(_name);
                      }
                    },
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

class HelperValidator {
  static String? nameValidate(String value) {
    if (value!.isEmpty) {
      return 'Name cannot be empty!';
    }
    if (value.length < 4) {
      return 'Name must be at least 4 characters long';
    }
    if (value.length > 15) {
      return 'Name must be less than or equal to 15 characters';
    }
    return null;
  }
}
