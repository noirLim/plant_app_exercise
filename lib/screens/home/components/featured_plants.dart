import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FeaturedPlantsCard(
            image: "assets/images/bottom_img_1.png",
            press: () {},
          ),
          FeaturedPlantsCard(
            image: "assets/images/bottom_img_2.png",
            press: () {},
          )
        ],
      ),
    );
  }
}

class FeaturedPlantsCard extends StatelessWidget {
  FeaturedPlantsCard({required this.image, required this.press});

  final String image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: MediaQuery.of(context).size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
      ),
    );
  }
}
