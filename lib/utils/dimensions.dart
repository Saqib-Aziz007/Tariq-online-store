import 'package:flutter/cupertino.dart';

class Dimensions {
  static isMobile({required BuildContext context}) =>
      MediaQuery.of(context).size.width <= 600;

  static isDesktop({required BuildContext context}) =>
      MediaQuery.of(context).size.width >= 600;
}
