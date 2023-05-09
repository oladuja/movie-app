
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 120, bottom: 20),
        child: Image.asset('assets/images/Logo.png'),
      ),
    );
  }
}
