import 'package:car_customizer_app/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExteriorPage extends StatelessWidget {
  const ExteriorPage({super.key});

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
          Image.asset("assets/whitecar.png"),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pearl White Multi-Coat",
                  style: GoogleFonts.lato(
                    color: scaffoldprimaryColor,
                    fontSize: 28,
                  ),
                ),
                Text(
                  "\$2,000",
                  style: GoogleFonts.lato(
                    color: buttonBorderColor,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: scaffoldprimaryColor,
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xff45525C),
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xff044BB6),
                    ),
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: buttonBorderColor,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: buttonBorderColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: secondaryTextColor.withOpacity(0.2),
                  thickness: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "20’ Performance Wheels",
                  style: GoogleFonts.lato(
                    color: scaffoldprimaryColor,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Carbon fiber spoiler",
                  style: GoogleFonts.lato(
                    color: scaffoldprimaryColor,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: size.height * 0.12,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: primaryTextColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Row(
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
            ),
          ),
        ],
      ),
    );
  }
}
