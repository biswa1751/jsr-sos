import 'package:jsr_sos/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// manage the admin theme
class AppTheme {
  //get the theme
  static final _defaultTheme = ThemeData.light();
  //get the text theme
  static final _defaultTextTheme = _defaultTheme.textTheme;
  static final bool isDark =
      _defaultTheme.colorScheme.brightness == Brightness.dark;
  //app theme data
  static ThemeData themeData = _defaultTheme.copyWith(
    textTheme: textTheme,
    textSelectionTheme: TextSelectionThemeData(cursorColor: AppColors.black),
    colorScheme: ColorScheme.light(
      primary: Colors.black,
    ),
    iconTheme: IconThemeData(color: AppColors.darkBlue),
    primaryColor: AppColors.darkBlue,
    scaffoldBackgroundColor: AppColors.white,
  );

  static AppTextTheme textTheme = AppTextTheme(
    headline1: GoogleFonts.cardo(
      textStyle: _defaultTextTheme.headline1!.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 55,
        // letterSpacing: 1.5,
        // height: 60,
        color: AppColors.black,
        fontStyle: FontStyle.normal,
      ),
    ),
    headline2: GoogleFonts.cardo(
      textStyle: _defaultTextTheme.headline2!.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 40,
        // letterSpacing: 0.5,
        // height: 48,
        color: AppColors.black,
        fontStyle: FontStyle.normal,
      ),
    ),
    headline3: GoogleFonts.cardo(
      textStyle: _defaultTextTheme.headline3!.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 30,
        // height: 38,
        color: AppColors.black,
        fontStyle: FontStyle.normal,
      ),
    ),
    headline4: GoogleFonts.josefinSans(
      textStyle: _defaultTextTheme.headline4!.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 24,
        // letterSpacing: 24,
        // height: 43.07,
        color: AppColors.black,
        fontStyle: FontStyle.normal,
      ),
    ),
    headline5: GoogleFonts.josefinSans(
      textStyle: _defaultTextTheme.headline5!.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 18,
        // height: 18,
        color: AppColors.black,
        fontStyle: FontStyle.normal,
      ),
    ),
    headline6: GoogleFonts.cardo(
      textStyle: _defaultTextTheme.headline6!.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        letterSpacing: 0.15,
        // height: 27,
        color: AppColors.black,
        fontStyle: FontStyle.normal,
      ),
    ),
    subtitle1: GoogleFonts.josefinSans(
      textStyle: _defaultTextTheme.subtitle1!.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 15,
        // letterSpacing: 0.15,
        // height: 15,
        color: AppColors.black,
        fontStyle: FontStyle.normal,
      ),
    ),
    subtitle2: GoogleFonts.josefinSans(
      textStyle: _defaultTextTheme.subtitle2!.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        // letterSpacing: 0.1,
        // height: 12,
        color: AppColors.black,
        fontStyle: FontStyle.normal,
      ),
    ),
    bodyText1: GoogleFonts.josefinSans(
      textStyle: _defaultTextTheme.bodyText1!.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 18,
        // letterSpacing: -0.5,
        // height: 18,
        color: AppColors.black,
        fontStyle: FontStyle.normal,
      ),
    ),
    bodyText2: GoogleFonts.josefinSans(
      textStyle: _defaultTextTheme.bodyText2!.copyWith(
        fontWeight: FontWeight.w300,
        fontSize: 16,
        letterSpacing: -0.5,
        // height: 16,
        color: AppColors.black,
        fontStyle: FontStyle.normal,
      ),
    ),
    button: GoogleFonts.josefinSans(
      textStyle: _defaultTextTheme.button!.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: 11,
        letterSpacing: 1,
        fontStyle: FontStyle.normal,
        // height: 11,
        color: AppColors.black,
      ),
    ),
    caption: GoogleFonts.josefinSans(
      textStyle: _defaultTextTheme.caption!.copyWith(
        fontWeight: FontWeight.w300,
        fontSize: 12,
        // letterSpacing: 0.4,
        // height: 12,
        color: AppColors.black,
        fontStyle: FontStyle.normal,
      ),
    ),
    overline: GoogleFonts.josefinSans(
      textStyle: _defaultTextTheme.overline!.copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 11,
        letterSpacing: 1,
        fontStyle: FontStyle.normal,
        // height: 11,
        color: AppColors.black,
      ),
    ),
    h216Medium: GoogleFonts.poppins(
      textStyle: _defaultTextTheme.headline2!.copyWith(
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontSize: 16,
        letterSpacing: 1.5,
        height: 24 / 16,
        color: AppColors.black,
      ),
    ),
    h216Regular: GoogleFonts.poppins(
      textStyle: _defaultTextTheme.headline2!.copyWith(
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal,
        fontSize: 14,
        height: 21 / 14,
        color: AppColors.black,
      ),
    ),
    h412Medium: GoogleFonts.poppins(
      textStyle: _defaultTextTheme.headline4!.copyWith(
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontSize: 10,
        height: 18 / 10,
        color: AppColors.black,
      ),
    ),
    h410Regular: GoogleFonts.poppins(
      textStyle: _defaultTextTheme.headline2!.copyWith(
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal,
        fontSize: 10,
        height: 18 / 10,
        color: AppColors.black,
      ),
    ),
    regular12: GoogleFonts.poppins(
      textStyle: _defaultTextTheme.bodyText1!.copyWith(
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal,
        fontSize: 12,
        height: 18 / 12,
        color: AppColors.black,
      ),
    ),
    headerBold14: GoogleFonts.poppins(
      textStyle: _defaultTextTheme.headline2!.copyWith(
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        fontSize: 14,
        height: 21 / 14,
        color: AppColors.black,
      ),
    ),
  );
}

// all the admin text theme
class AppTextTheme extends TextTheme {
  final TextStyle? h216Medium;
  final TextStyle? h216Regular;
  final TextStyle? h412Medium;
  final TextStyle? h410Regular;
  final TextStyle? regular12;
  final TextStyle? headerBold14;

  AppTextTheme({
    this.h216Medium,
    this.h216Regular,
    this.h410Regular,
    this.h412Medium,
    this.headerBold14,
    this.regular12,
    headline1,
    headline2,
    headline3,
    headline4,
    headline5,
    headline6,
    bodyText1,
    bodyText2,
    button,
    caption,
    overline,
    subtitle1,
    subtitle2,
  }) : super(
          headline1: headline1,
          headline2: headline2,
          headline3: headline3,
          headline4: headline4,
          headline5: headline5,
          headline6: headline6,
          bodyText1: bodyText1,
          bodyText2: bodyText2,
          button: button,
          caption: caption,
          overline: overline,
          subtitle1: subtitle1,
          subtitle2: subtitle2,
        );
}
