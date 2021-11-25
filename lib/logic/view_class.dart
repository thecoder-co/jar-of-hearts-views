import 'dart:convert';

View viewFromJson(String str) => View.fromJson(json.decode(str));

String viewToJson(View data) => json.encode(data.toJson());

class View {
  View({
    this.globalFont,
    this.hasOpening,
    this.openingPage,
    this.pages,
  });

  String? globalFont;
  bool? hasOpening;
  OpeningPage? openingPage;
  List<Page>? pages;

  factory View.fromJson(Map<String, dynamic> json) => View(
        globalFont: json["global_font"],
        hasOpening: json["has_opening"],
        openingPage: OpeningPage.fromJson(json["opening_page"]),
        pages: List<Page>.from(json["pages"].map((x) => Page.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "global_font": globalFont,
        "has_opening": hasOpening,
        "opening_page": openingPage!.toJson(),
        "pages": List<dynamic>.from(pages!.map((x) => x.toJson())),
      };
}

class OpeningPage {
  OpeningPage(
      {this.font,
      this.backgroundColor,
      this.backgroundImage,
      this.music,
      this.containerColor,
      this.containerBorderColor,
      this.containerImage,
      this.text,
      this.buttonColor,
      this.textColor});

  String? font;
  String? backgroundColor;
  String? backgroundImage;
  String? music;
  String? buttonColor;
  String? containerColor;
  String? containerBorderColor;
  String? containerImage;
  String? text;
  String? textColor;

  factory OpeningPage.fromJson(Map<String, dynamic> json) => OpeningPage(
        font: json["font"],
        backgroundColor: json["background_color"],
        backgroundImage: json["background_image"],
        music: json["music"],
        containerColor: json["container_color"],
        containerBorderColor: json["container_border_color"],
        containerImage: json["container_image"],
        text: json["text"],
        buttonColor: json["button_color"],
        textColor: json["text_color"],
      );

  Map<String, dynamic> toJson() => {
        "font": font,
        "background_color": backgroundColor,
        "background_image": backgroundImage,
        "music": music,
        "container_color": containerColor,
        "container_border_color": containerBorderColor,
        "container_image": containerImage,
        "text": text,
        "button_color": buttonColor,
        "text_color": textColor
      };
}

class Page {
  Page({
    this.font,
    this.backgroundColor,
    this.backgroundImage,
    this.containerColor,
    this.containerBorderColor,
    this.containerImage,
    this.text,
    this.child,
  });

  String? font;
  String? backgroundColor;
  String? backgroundImage;
  String? containerColor;
  String? containerBorderColor;
  String? containerImage;
  String? text;
  Child? child;

  factory Page.fromJson(Map<String, dynamic> json) => Page(
        font: json["font"],
        backgroundColor: json["background_color"],
        backgroundImage: json["background_image"],
        containerColor: json["container_color"],
        containerBorderColor: json["container_border_color"],
        containerImage: json["container_image"],
        text: json["text"],
        child: Child.fromJson(json["child"]),
      );

  Map<String, dynamic> toJson() => {
        "font": font,
        "background_color": backgroundColor,
        "background_image": backgroundImage,
        "container_color": containerColor,
        "container_border_color": containerBorderColor,
        "container_image": containerImage,
        "text": text,
        "child": child!.toJson(),
      };
}

class Child {
  Child({
    this.backgroundColor,
    this.backgroundImage,
    this.music,
    this.viewData,
  });

  String? backgroundColor;
  String? backgroundImage;
  String? music;
  List<ViewDatum>? viewData;

  factory Child.fromJson(Map<String, dynamic> json) => Child(
        backgroundColor: json["background_color"],
        backgroundImage: json["background_image"],
        music: json["music"],
        viewData: List<ViewDatum>.from(
            json["view_data"].map((x) => ViewDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "background_color": backgroundColor,
        "background_image": backgroundImage,
        "music": music,
        "view_data": List<dynamic>.from(viewData!.map((x) => x.toJson())),
      };
}

class ViewDatum {
  ViewDatum({
    this.font,
    this.backgroundColor,
    this.backgroundImage,
    this.containerBorderColor,
    this.containerColor,
    this.containerImage,
    this.text,
    this.bottomText,
  });

  String? font;
  String? backgroundColor;
  String? backgroundImage;
  String? containerBorderColor;
  String? containerColor;
  String? containerImage;
  String? text;
  String? bottomText;

  factory ViewDatum.fromJson(Map<String, dynamic> json) => ViewDatum(
        font: json["font"],
        backgroundColor: json["background_color"],
        backgroundImage: json["background_image"],
        containerBorderColor: json["container_border_color"],
        containerColor: json["container_color"],
        containerImage: json["container_image"],
        text: json["text"],
        bottomText: json["bottom_text"],
      );

  Map<String, dynamic> toJson() => {
        "font": font,
        "background_color": backgroundColor,
        "background_image": backgroundImage,
        "container_border_color": containerBorderColor,
        "container_color": containerColor,
        "container_image": containerImage,
        "text": text,
        "bottom_text": bottomText,
      };
}
