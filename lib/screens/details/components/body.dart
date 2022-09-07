import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/image_icon.dart';
import 'package:plant_app/screens/details/components/title_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcon(),
          TitleAndPrice(
            title: "Angelica",
            country: "Russia",
            price: 440
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            children:<Widget> [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                height:84,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20)
                      )
                    )
                  ),
                  onPressed: (){},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                    ),   
                  ),
                ),
              ),
              Expanded(child: TextButton(
                onPressed: (){},
                child: Text("Descriprtion"),
              ))
            ],
          )
        ],
      ),
    );
  }
}

