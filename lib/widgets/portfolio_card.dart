import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/constant.dart';

import 'package:universal_html/js.dart' as js;

class SkillDetailsContainer extends StatelessWidget {
  final skill;

  const SkillDetailsContainer({Key? key, this.skill}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var data = kSkills[skill]!;
    return ListView.builder(
      itemCount: data.title.length + 1,
      itemBuilder: (context, i) {
        if (i == 0) {
          return Card(
            color: kDeepBlue,
            child: Text(
              skill,
              style: GoogleFonts.titilliumWeb(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          );
        }
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          color: kCardBackground,
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title[i - 1],
                  style: GoogleFonts.titilliumWeb(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    height: 1,
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Text(
                  data.subheading[i - 1],
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 12,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    data.body[i - 1],
                    style: GoogleFonts.titilliumWeb(
                      color: kDarkWhite,
                      height: 1,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    if (kIsWeb) {
                      js.context.callMethod('open', [data.links[i - 1]]);
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                    margin: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Text(
                      data.buttonText[i - 1],
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
