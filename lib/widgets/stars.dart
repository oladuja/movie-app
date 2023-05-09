import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  const Stars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List<Widget>.generate(
          5,
          (index) => Icon(
            (index < 4) ? Icons.star : Icons.star_border,
            color: const Color(0XFFFFBB3B),
          ),
        ),
      ),
    );
  }
}