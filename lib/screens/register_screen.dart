import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/arrow_back.dart';
import 'package:flutter_application_1/widgets/profile_picture.dart';
import 'package:flutter_application_1/widgets/register_text_form.dart';

class RegisterScreen extends StatelessWidget {
  static const routeName = 'register-screen';

  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).viewPadding.top),
            const ArrowBack(),
            const Center(
              child: ProfilePicture(),
            ),
            const RegisterTextForms()
          ],
        ),
      ),
    );
  }
}
