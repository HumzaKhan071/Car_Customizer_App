import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Utils/colors.dart';

class InteriorPage extends StatelessWidget {
  const InteriorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Image.asset("assets/carInterior.png"),
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
                      Text("Select Interior",
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
                              Text("Black and White",
                                  style: GoogleFonts.lato(
                                      fontSize: 28,
                                      color: scaffoldprimaryColor)),
                              Text("\$1,000",
                                  style: GoogleFonts.lato(
                                      fontSize: 24, color: buttonBorderColor))
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("All Black",
                                  style: GoogleFonts.lato(
                                      fontSize: 28,
                                      color: secondaryTextColor2
                                          .withOpacity(0.2))),
                              Text("Included",
                                  style: GoogleFonts.lato(
                                      fontSize: 24,
                                      color:
                                          secondaryTextColor2.withOpacity(0.1)))
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: buttonBorderColor,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: scaffoldprimaryColor,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$58,700",
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
