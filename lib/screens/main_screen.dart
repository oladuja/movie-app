
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/movie_detail_screen.dart';
import 'package:flutter_application_1/widgets/listBuilder.dart';
import 'package:flutter_application_1/widgets/rating.dart';
import 'package:flutter_application_1/widgets/stars.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () =>
                Navigator.of(context).pushNamed(MovieDetailScreen.routeName),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/images/Image.png'),
                ),
              ),
            ),
          ),
          Rating(),
          const Stars(),
          const SizedBox(height: 10),
          const Center(
            child: Text(
              'Movie     |    Adventure    |     Comedy     |     Family',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Watching',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          const ListBuilder(
            assetname: 'assets/images/',
            itemCount: 4,
          ),
        ],
      ),
    );
  }
}
