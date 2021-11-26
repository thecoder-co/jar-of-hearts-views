import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jar_of_hearts_views/logic/view_class.dart';
import 'package:jar_of_hearts_views/screens/opening_page.dart';
import 'package:jar_of_hearts_views/widgets/start_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Jar of Hearts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  var rawData = json.encode({
    "global_font": "Nunito",
    "opening_page": {
      "font": "global_font",
      "background_color": ["0xff6699cc", "0xFF609162"],
      "background_image": "",
      "music": "",
      "container_color": "",
      "container_border_color": "",
      "container_image": "",
      "text": ""
    },
    "pages": [
      {
        "font": "global_font",
        "background_color": [""],
        "background_image": "",
        "container_color": "",
        "container_border_color": "",
        "container_image": "",
        "text": "",
        "child": {
          "background_color": "",
          "background_image": "",
          "music": "",
          "view_data": [
            {
              "font": "global_font",
              "background_color": "",
              "background_image": [""],
              "container_border_color": "",
              "container_color": "",
              "container_image": "",
              "text": "",
              "bottom_text": ""
            }
          ]
        }
      }
    ]
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 3)),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        View viewData = viewFromJson(rawData.toString());
        if (viewData.openingPage != null) {
          return OpeningPageScreen(data: viewData);
        }
        return Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
