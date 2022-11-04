import 'package:car_customizer_app/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff000000),
        title: Image.asset("assets/logo.png"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Model X",
                    style: GoogleFonts.ubuntu(
                      color: secondaryTextColor,
                      fontSize: 28,
                    )),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text("Tesla",
                        style: GoogleFonts.ubuntu(
                          color: primaryTextColor,
                          fontSize: 36,
                        )),
                    Text("Model Y",
                        style: GoogleFonts.ubuntu(
                          color: primaryTextColor,
                          fontSize: 48,
                        )),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Roadster",
                    style: GoogleFonts.ubuntu(
                      color: secondaryTextColor,
                      fontSize: 28,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset("assets/car.png"),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text("300 mi",
                      style: GoogleFonts.ubuntu(
                        color: primaryTextColor,
                        fontSize: 36,
                      )),
                  Text("Range (EPA est.)",
                      style: GoogleFonts.ubuntu(
                        color: primaryTextColor,
                        fontSize: 14,
                      )),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 1,
                height: 57,
                color: secondaryTextColor,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text("AWD",
                      style: GoogleFonts.ubuntu(
                        color: primaryTextColor,
                        fontSize: 36,
                      )),
                  Text("Dual Motor",
                      style: GoogleFonts.ubuntu(
                        color: primaryTextColor,
                        fontSize: 14,
                      )),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Column(
              children: [
                Text.rich(
                  TextSpan(
                    text: "Acceleration: ",
                    style: GoogleFonts.ubuntu(
                      color: secondaryTextColor,
                      fontSize: 18,
                    ),
                    children: [
                      TextSpan(
                        text: "0-60 mph in 3.5s",
                        style: GoogleFonts.ubuntu(
                          color: primaryTextColor,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Text.rich(
                  TextSpan(
                    text: "Top speed: ",
                    style: GoogleFonts.ubuntu(
                      color: secondaryTextColor,
                      fontSize: 18,
                    ),
                    children: [
                      TextSpan(
                        text: "up to 150 mph ",
                        style: GoogleFonts.ubuntu(
                          color: primaryTextColor,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: buttonBorderColor,
                    ),
                    borderRadius: BorderRadius.circular(1000),
                  ),
                  child: TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, "/home");
                    },
                    child: Text(
                      "ORDER NOW",
                      style: GoogleFonts.ubuntu(
                        color: primaryTextColor,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
