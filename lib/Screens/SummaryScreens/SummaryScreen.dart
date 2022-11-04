import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Utils/colors.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Image.asset(
                "assets/carSummary.jpg",
              ),
              Positioned(
                  top: 50,
                  left: size.width * 0.35,
                  child: Image.asset("assets/logo.png")),
              Positioned(
                bottom: 0,
                child: Container(
                  height: 300,
                  width: size.width,
                  padding:
                      EdgeInsets.only(top: 20, left: 20, right: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color: scaffoldprimaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Summary",
                          style: GoogleFonts.lato(
                              fontSize: 24, color: secondaryTextColor2)),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Your Model Y",
                          style: GoogleFonts.lato(
                              fontSize: 48, color: primaryTextColor)),
                      SizedBox(
                        height: 20,
                      ),
                      Text("\$60,700",
                          style: GoogleFonts.lato(
                              color: primaryTextColor, fontSize: 36)),
                      SizedBox(
                        height: 20,
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
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.apple,
                                color: primaryTextColor,
                              ),
                              Text(
                                "Pay",
                                style: GoogleFonts.ubuntu(
                                  color: primaryTextColor,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
