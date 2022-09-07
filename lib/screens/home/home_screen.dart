import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/body.dart';
import 'package:plant_app/screens/home/components/bottom_navbar.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body:Body(),
      bottomNavigationBar: BottomNavbar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor:kPrimaryColor,
      elevation: 0,
      leading:IconButton(onPressed:(){
      }, icon: SvgPicture.asset("assets/icons/menu.svg"))
    );
  }
}

