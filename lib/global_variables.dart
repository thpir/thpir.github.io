import 'package:flutter/material.dart';

const backgroundColor = Color.fromRGBO(27, 28, 56, 1);
const primaryColor = Color.fromRGBO(4, 4, 10, 1);
const onPrimaryActive = Color.fromRGBO(244, 244, 244, 1);
const onPrimaryInactive = Color.fromRGBO(97, 97, 97, 1);
const accentColor1 = Color.fromRGBO(25, 125, 230, 1);
const accentColor2 = Color.fromRGBO(168, 46, 228, 1);

double getTitleFontSize(double screenwidth) {
  return (screenwidth * 0.06) < 24
      ? 24
      : (screenwidth * 0.06) > 60
          ? 60
          : screenwidth * 0.06;
}

double getSubtitleFontSize(double screenwidth) {
  return (screenwidth * 0.03) < 16
      ? 16
      : (screenwidth * 0.03) > 28
          ? 28
          : screenwidth * 0.03;
}

double getDividerHeight(double screenwidth) {
  return (screenwidth * 0.03) < 5
      ? 5
      : (screenwidth * 0.03) > 30
          ? 30
          : screenwidth * 0.03;
}

double getScreenPadding(double screenwidth) {
  return (screenwidth) < 500 ? screenwidth / 20 : screenwidth / 5;
}
