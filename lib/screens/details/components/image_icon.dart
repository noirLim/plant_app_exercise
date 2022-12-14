import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/icon_card.dart';

class ImageAndIcon extends StatelessWidget {
  const ImageAndIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: kDefaultPadding * 3
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: Row(
          children:<Widget> [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: kDefaultPadding * 3
                ),
                child: Column(
                  children:<Widget> [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        icon:SvgPicture.asset("assets/icons/back_arrow.svg"),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Spacer(),
                    IconCard(icon: "assets/icons/sun.svg"),
                    IconCard(icon: "assets/icons/icon_2.svg"),
                    IconCard(icon: "assets/icons/icon_3.svg"),
                    IconCard(icon: "assets/icons/icon_4.svg"),
                  ],
                ),
              ),
            ),
            Container(
              height:MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63)
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 60,
                    color:kPrimaryColor.withOpacity(0.29)
                  )
                ],
                image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit:BoxFit.cover,
                  image: AssetImage("assets/images/img.png")
                )
              ),
            )     
          ],
        ),
      ),
    );
  }
}

