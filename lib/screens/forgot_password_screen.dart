import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/app_button.dart';
import 'package:flutter_application_1/widgets/app_logo.dart';
import 'package:flutter_application_1/widgets/arrow_back.dart';
import 'package:flutter_application_1/widgets/login_text_form_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const String routeName = 'forgot-password';
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).viewPadding.top),
            const ArrowBack(),
            const AppLogo(),
            const SizedBox(height: 20),
            Center(
              child: Column(
                children: const [
                  Text(
                    'FORGOT PASSWORD?',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '''Enter the email address you used to
create your account and we will email
you a link to reset your password''',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      wordSpacing: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            const LoginTextFormWidget(
              type: '',
              name: 'EMAIL',
              hintText: 'email here',
            ),
            const SizedBox(height: 20),
            AppButton(
              value: 'SEND EMAIL',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
