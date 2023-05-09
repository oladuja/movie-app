
import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CircleAvatar(
          radius: 50,
          backgroundColor: Color(0XFF1D1D1D),
          child: Icon(
            Icons.person,
            color: Color(0XFFFFBB3B),
            size: 64,
          ),
        ),
        SizedBox(height: 15),
        Text(
          'Add Profile Picture',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
