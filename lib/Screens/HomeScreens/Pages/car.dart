import 'package:car_customizer_app/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarPage extends StatelessWidget {
  const CarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: scaffoldsecondaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Select your car",
                style: GoogleFonts.lato(
                  color: secondaryTextColor.withOpacity(0.2),
                  fontSize: 24,
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset("assets/redcar.png"),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Performance",
                    style: GoogleFonts.lato(
                      color: scaffoldprimaryColor,
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    "\$55,700",
                    style: GoogleFonts.lato(
                      color: buttonBorderColor,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Long Range",
                    style: GoogleFonts.lato(
                      color: secondaryTextColor.withOpacity(0.2),
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    "\$46,700",
                    style: GoogleFonts.lato(
                      color: secondaryTextColor.withOpacity(0.2),
                      fontSize: 24,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: size.height * 0.34,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: primaryTextColor,
              borderRadius: BorderRadius.circular(35),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          "3.5s",
                          style: GoogleFonts.lato(
                              color: scaffoldprimaryColor,
                              fontSize: 36,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "0-60 mph",
                          style: GoogleFonts.lato(
                            color: scaffoldprimaryColor,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: size.width * 0.24,
                    ),
                    Container(
                      width: 1,
                      height: 57,
                      color: secondaryTextColor,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "150mph",
                          style: GoogleFonts.lato(
                              color: scaffoldprimaryColor,
                              fontSize: 36,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Top Speed",
                          style: GoogleFonts.lato(
                            color: scaffoldprimaryColor,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Tesla All-Wheel Drive has two independent motors. Unlike traditional all-wheel drive systems, these two motors digitally control torque to the front and rear wheels—for far better handling and traction control.",
                  style: GoogleFonts.lato(
                      color: secondaryTextColor2, fontSize: 14),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$55,700",
                        style: GoogleFonts.lato(
                            color: scaffoldprimaryColor, fontSize: 24)),
                    Container(
                      width: 187,
                      height: 64,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: buttonBorderColor,
                        ),
                        borderRadius: BorderRadius.circular(1000),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "NEXT",
                          style: GoogleFonts.ubuntu(
                            color: scaffoldprimaryColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
