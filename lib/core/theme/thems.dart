import 'package:animy_clean_arc/core/theme/colors.dart';
import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  fontFamily: 'Raleway',
  scaffoldBackgroundColor: Colors.white,
  brightness: Brightness.light,
  useMaterial3: true,
  extensions: const [
    AppColors(
      navyBlue: Color(0xff18153F),
      primaryPurple: Color(0xff5436F8),
      white: Color(0xffFFFFFF),
      offWhite: Color(0xffF9F8FD),
      softPurple: Color(0xffA49AD8),
      primaryGrey: Color(0xffACACAC),
      black: Colors.black,
    ),
  ],
);

final darkTheme = ThemeData(
  fontFamily: 'cairo',
  brightness: Brightness.dark,
  useMaterial3: true,
  extensions: const [
    AppColors(
      navyBlue: Color.fromARGB(255, 234, 175, 27),
      primaryPurple: Color(0xffFF7A33),
      white: Color.fromARGB(255, 36, 36, 36),
      offWhite: Color(0xffF9F8FD), 
      softPurple: Color(0xff1E1E1E),
      primaryGrey: Color(0xff666666),
      black: Color(0xff4CAF50),
    ),
  ],
);
