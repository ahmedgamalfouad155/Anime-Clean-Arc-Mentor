import 'package:flutter/material.dart';

extension AppColorHelper on BuildContext {
  AppColors get appColors => Theme.of(this).extension<AppColors>()!;
}

@immutable
class AppColors extends ThemeExtension<AppColors> {
  final Color navyBlue;
  final Color primaryPurple;
  final Color white;
  final Color offWhite;
  final Color softPurple;
  final Color primaryGrey;
  final Color black;

  const AppColors({
    required this.navyBlue,
    required this.primaryPurple,
    required this.white,
    required this.offWhite,
    required this.softPurple,
    required this.primaryGrey,
    required this.black,
  });

  @override
  AppColors copyWith({
    Color? navyBlue,
    Color? primaryPurple,
    Color? white,
    Color? offWhite,
    Color? softPurple,
    Color? primaryGrey,
    Color? black,
  }) {
    return AppColors(
      navyBlue: navyBlue ?? this.navyBlue,
      primaryPurple: primaryPurple ?? this.primaryPurple,
      white: white ?? this.white,
      offWhite: offWhite ?? this.offWhite,
      softPurple: softPurple ?? this.softPurple,
      primaryGrey: primaryGrey ?? this.primaryGrey,
      black: black ?? this.black,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      navyBlue: Color.lerp(navyBlue, other.navyBlue, t)!,
      primaryPurple: Color.lerp(primaryPurple, other.primaryPurple, t)!,
      white: Color.lerp(white, other.white, t)!,
      offWhite: Color.lerp(offWhite, other.offWhite, t)!,
      softPurple: Color.lerp(softPurple, other.softPurple, t)!,
      primaryGrey: Color.lerp(primaryGrey, other.primaryGrey, t)!,
      black: Color.lerp(black, other.black, t)!,
    );
  }
}
