import 'package:flutter/material.dart';

class TextStyl {
  static TextStyle? heading1(BuildContext context) {
    return Theme.of(context).textTheme.headline1;
  }

  static TextStyle? heading2(BuildContext context) {
    return Theme.of(context).textTheme.headline2;
  }

  static TextStyle? heading3(BuildContext context) {
    return Theme.of(context).textTheme.headline3;
  }

  static TextStyle? title(BuildContext context) {
    return Theme.of(context).textTheme.headline2?.copyWith(
          fontSize: 22.0,
          fontWeight: FontWeight.w600,
        );
  }

  static TextStyle? subtitle(BuildContext context) {
    return Theme.of(context).textTheme.headline3?.copyWith(
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
        );
  }

  static TextStyle? body(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1?.copyWith(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
        );
  }

  static TextStyle? bodySm(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 14.0);
  }

  static TextStyle? bodyXs(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 13.0);
  }

  static TextStyle? caption(BuildContext context) {
    return Theme.of(context).textTheme.caption;
  }

  static TextStyle? button(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .button
        ?.copyWith(fontSize: 14.0, fontWeight: FontWeight.w600);
  }

  static TextStyle? label(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .button
        ?.copyWith(fontWeight: FontWeight.w600, fontSize: 14.0);
  }
}
