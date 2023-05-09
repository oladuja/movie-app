import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/download.dart';

class DownloadsScreen extends StatelessWidget {
  const DownloadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: downloadsList.length,
          itemBuilder: (_, i) => Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              leading: Container(
                width: 120,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(downloadsList[i].imangeUrl),
                  ),
                ),
              ),
              title: Text(downloadsList[i].name),
              subtitle: Text(downloadsList[i].size),
            ),
          ),
        ),
      ),
    );
  }
}
