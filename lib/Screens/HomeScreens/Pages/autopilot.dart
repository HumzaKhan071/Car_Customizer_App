import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Utils/colors.dart';

class AutoPilotPage extends StatelessWidget {
  const AutoPilotPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              SizedBox(
                width: size.width,
                height: size.height,
                child: Image.asset(
                  "assets/carTracker.png",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 300,
                  width: size.width,
                  padding:
                      EdgeInsets.only(top: 20, left: 20, right: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Autopilot",
                          style: GoogleFonts.lato(
                              fontSize: 24, color: secondaryTextColor2)),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Full Self-Driving ",
                                  style: GoogleFonts.lato(
                                      fontSize: 28,
                                      color: scaffoldprimaryColor)),
                              Text("\$5,000",
                                  style: GoogleFonts.lato(
                                      fontSize: 24, color: buttonBorderColor))
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Autopilot",
                                  style: GoogleFonts.lato(
                                      fontSize: 28,
                                      color: secondaryTextColor2
                                          .withOpacity(0.2))),
                              Text("\$3,000",
                                  style: GoogleFonts.lato(
                                      fontSize: 24,
                                      color:
                                          secondaryTextColor2.withOpacity(0.2)))
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Atomatic driving from highway on-rampto to \noff-ramp including interchanges and \novertaking slower cars.",
                        style: GoogleFonts.lato(
                            fontSize: 16, color: secondaryTextColor2),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$60,700",
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
                              onPressed: () {
                                Navigator.pushNamed(context, "/summary");
                              },
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
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
