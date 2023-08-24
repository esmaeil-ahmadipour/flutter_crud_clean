import 'package:flutter/material.dart';

class MainTextStyle {
  MainTextStyle._();

  static Text blackText({
    required String text,
    double? size,
    TextAlign? align,
    required Color color,
    int? maxLine,
  }) {
    return Text(
      text,
      textAlign: align ?? TextAlign.center,
      maxLines: maxLine ?? 1,
      overflow: TextOverflow.ellipsis,
      style: bold(color, size ?? 12),
    );
  }

  static TextStyle black(Color color, double size) {
    return TextStyle(
      fontWeight: FontWeight.w900,
      color: color,
      fontSize: size,
    );
  }

  static Text boldText({
    required String text,
    double? size,
    TextAlign? align,
    required Color color,
    int? maxLine,
  }) {
    return Text(
      text,
      textAlign: align ?? TextAlign.center,
      maxLines: maxLine ?? 1,
      overflow: TextOverflow.ellipsis,
      style: bold(color, size ?? 12),
    );
  }

  static TextStyle bold(Color color, double size) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      color: color,
      fontSize: size,
    );
  }

  static Text regularText({
    required String text,
    double? size,
    TextAlign? align,
    required Color color,
    int? maxLine,
  }) {
    return Text(
      text,
      textAlign: align ?? TextAlign.center,
      maxLines: maxLine ?? 1,
      overflow: TextOverflow.ellipsis,
      style: regular(color, size ?? 12),
    );
  }

  static TextStyle regular(Color color, double size) {
    return TextStyle(
      fontWeight: FontWeight.normal,
      color: color,
      fontSize: size,
    );
  }

  static Text thinText({
    required String text,
    double? size,
    TextAlign? align,
    required Color color,
    int? maxLine,
  }) {
    return Text(
      text,
      textAlign: align ?? TextAlign.center,
      maxLines: maxLine ?? 1,
      overflow: TextOverflow.ellipsis,
      style: regular(color, size ?? 12),
    );
  }

  static TextStyle thin(Color color, double size) {
    return TextStyle(
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.italic,
      color: color,
      fontSize: size,
    );
  }
}
