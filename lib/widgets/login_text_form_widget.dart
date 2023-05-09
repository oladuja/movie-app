import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/forgot_password_screen.dart';

class LoginTextFormWidget extends StatelessWidget {
  final String type;
  final String name;
  final String hintText;

  const LoginTextFormWidget({
    super.key,
    required this.type,
    required this.name,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Stack(
            children: [
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  filled: true,
                  hintText: hintText,
                  fillColor: const Color(0XFF212121),
                  enabled: true,
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
              if (type == 'password')
                Positioned(
                  top: 20,
                  right: 15,
                  child: InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed(ForgotPasswordScreen.routeName),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'FORGOT?',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
            ],
          )
        ],
      ),
    );
  }
}
