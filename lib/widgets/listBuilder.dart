import 'package:flutter/material.dart';

class ListBuilder extends StatelessWidget {
  final String assetname;

  final int itemCount;

  const ListBuilder({
    super.key,
    required this.assetname,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image.asset('$assetname${index + 1}.png'),
        ),
      ),
    );
  }
}
