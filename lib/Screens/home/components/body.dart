import 'package:flutter/material.dart';
import 'package:boletaapp/constants.dart';

import 'featurred_plants.dart';
import 'header_with_seachbox.dart';
import 'recomend_plants.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(6, (index) {
        return Center(
          child: Text("Item $index"),
        );
      }),
    );
  }
}
