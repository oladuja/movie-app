
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.0),
        child: Text(
          '9.0',
          style: TextStyle(color: Colors.white, fontSize: 33),
        ),
      ),
    );
  }
}
