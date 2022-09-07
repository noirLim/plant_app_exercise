import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/featured_plants.dart';
import 'package:plant_app/screens/home/components/header_with_searchbox.dart';
import 'package:plant_app/screens/home/components/recomended_plants.dart';
import 'package:plant_app/screens/home/components/title_with_more.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(),
          TitleWithMoreButton(title: "Recomended", press: () {}),
          RecomendedPlants(),
          TitleWithMoreButton(title: "Featured Plants", press: () {}),
          FeaturedPlantCard(),
          SizedBox(height: kDefaultPadding)
        ],
      ),
    );
  }
}

