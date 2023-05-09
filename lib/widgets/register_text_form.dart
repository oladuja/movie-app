import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/app_button.dart';
import 'package:flutter_application_1/widgets/login_text_form_widget.dart';

class RegisterTextForms extends StatelessWidget {
  const RegisterTextForms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children:  [
          const LoginTextFormWidget(
            type: '',
            name: 'FIRST NAME',
            hintText: 'first name here',
          ),
          const LoginTextFormWidget(
            type: '',
            name: 'LAST NAME',
            hintText: 'last name here',
          ),
          const LoginTextFormWidget(
            type: '',
            name: 'EMAIL',
            hintText: 'email here',
          ),
          const LoginTextFormWidget(
            type: '',
            name: 'PASSWORD',
            hintText: 'password here',
          ),
          const LoginTextFormWidget(
            type: '',
            name: 'CONFIRM PASSWORD',
            hintText: 'confirm passowrd here',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: AppButton(value: 'REGISTER', onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
