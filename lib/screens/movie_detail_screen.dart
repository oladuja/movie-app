import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/app_button.dart';
import 'package:flutter_application_1/widgets/arrow_back.dart';
import 'package:flutter_application_1/widgets/listBuilder.dart';
import 'package:flutter_application_1/widgets/rating.dart';
import 'package:flutter_application_1/widgets/stars.dart';

class MovieDetailScreen extends StatelessWidget {
  static const routeName = 'movie-detail-screen';
  const MovieDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.35,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/Image_play.png'),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).viewPadding.top),
                  const ArrowBack(),
                  const Spacer(),
                  Center(
                    child: Image.asset('assets/images/play-button-2.png'),
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Dora and the lost city of gold',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Movie     |    Adventure    |     Comedy     |     Family',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Rating(),
            const Stars(),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school. ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ),
            Center(
              child: SizedBox(
                width: 150,
                child: AppButton(
                  value: 'WATCH NOW',
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Cast',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            // ignore: prefer_const_constructors
            ListBuilder(
              assetname: 'assets/images/Image ',
              itemCount: 2,
            )
          ],
        ),
      ),
    );
  }
}
