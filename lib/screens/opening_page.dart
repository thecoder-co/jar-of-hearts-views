import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jar_of_hearts_views/logic/view_class.dart';
import 'package:jar_of_hearts_views/widgets/start_button.dart';

class OpeningPageScreen extends StatelessWidget {
  final View data;
  const OpeningPageScreen({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: data.openingPage!.backgroundColor != null
          ? Color(
              int.parse(
                data.openingPage!.backgroundColor!,
              ),
            )
          : null,
      body: Container(
        decoration: BoxDecoration(
          color: data.openingPage!.backgroundColor != null
              ? Color(
                  int.parse(
                    data.openingPage!.backgroundColor!,
                  ),
                )
              : null,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                height: Get.height * 0.8,
                width: Get.width * 0.90,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(
                    int.parse(
                      data.openingPage!.containerColor!,
                    ),
                  ),
                ),
                child: Text(
                  '${data.openingPage!.text}',
                  style: GoogleFonts.getFont(
                    '${data.openingPage!.font ?? data.globalFont}',
                    color: Color(
                      int.parse(
                        data.openingPage!.textColor!,
                      ),
                    ),
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              StartButton(
                color: Color(
                  int.parse(
                    data.openingPage!.buttonColor!,
                  ),
                ),
                textColor: Color(
                  int.parse(
                    data.openingPage!.textColor!,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
