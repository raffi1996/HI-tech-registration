

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/widgets.dart';

class Assets {

  Assets._();

  //flags
  static const usa = 'assets/flags/us.svg';


  //icons
  static const bottomButton = 'assets/icons/bottom.png';
  static const backButton = 'assets/icons/back_button.png';
}




extension AssetsHelper on String {
  SvgPicture svg({
    Color? color,
    double? height,
    double? width,
    BoxFit fit = BoxFit.contain,
  }) {
    return SvgPicture.asset(
      this,
      color: color,
      height: height,
      width: width,
      fit: fit,
    );
  }

  Image get png => Image.asset(this);
}