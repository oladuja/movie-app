import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/register_screen.dart';
import 'package:flutter_application_1/widgets/app_button.dart';
import 'package:flutter_application_1/widgets/app_logo.dart';
import 'package:flutter_application_1/widgets/login_text_form_widget.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'login_screen';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/home_bg.png'),
                ),
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.75),
              height: MediaQuery.of(context).size.height * 0.55,
              width: double.infinity,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).viewPadding.top),
                const AppLogo(),
                const LoginTextFormWidget(
                  type: 'email',
                  name: 'EMAIL',
                  hintText: 'email here',
                ),
                const LoginTextFormWidget(
                  type: 'password',
                  name: 'PASSWORD',
                  hintText: 'password here',
                ),
                const SizedBox(height: 10),
                AppButton(
                  value: 'LOGIN',
                  onPressed: () =>
                      Navigator.of(context).pushNamed(HomeScreen.routeName),
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SizedBox(
                        height: 4,
                        width: 100,
                        child: Divider(
                          thickness: 1.2,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'Social Logins',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 4,
                        width: 100,
                        child: Divider(
                          thickness: 1.2,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/Facebook button.png'),
                    const SizedBox(width: 10),
                    Image.asset('assets/images/Google button.png'),
                  ],
                ),
                const SizedBox(height: 30),
                const Center(
                  child: Text(
                    'Don\'t have an account?',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () =>
                      Navigator.of(context).pushNamed(RegisterScreen.routeName),
                  child: const Center(
                    child: Text(
                      'REGISTER',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
