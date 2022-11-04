import 'package:car_customizer_app/Screens/HomeScreens/Pages/autopilot.dart';
import 'package:car_customizer_app/Screens/HomeScreens/Pages/car.dart';
import 'package:car_customizer_app/Screens/HomeScreens/Pages/exterior.dart';
import 'package:car_customizer_app/Screens/HomeScreens/Pages/interior.dart';
import 'package:flutter/material.dart';

import '../../Utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              backgroundColor: primaryTextColor,
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: scaffoldprimaryColor.withOpacity(0.2),
                ),
              ),
              title: Image.asset("assets/logoBlack.png"),
              bottom: TabBar(
                  indicatorColor: buttonBorderColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: scaffoldprimaryColor,
                  unselectedLabelColor: secondaryTextColor.withOpacity(0.2),
                  tabs: [
                    Tab(
                      text: "1. Car",
                    ),
                    Tab(
                      text: "2. Exterior",
                    ),
                    Tab(
                      text: "3. Interior",
                    ),
                    Tab(
                      text: "4. Autopilot",
                    ),
                  ])),
          body: TabBarView(children: [
            CarPage(),
            ExteriorPage(),
            InteriorPage(),
            AutoPilotPage()
          ])),
    );
  }
}
