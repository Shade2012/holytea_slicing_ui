import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

figmaFontsize(int fontSize) {
  return fontSize * 0.80;
}

//COLOR
const Color primaryColor = Color(0xFF68AD50);

const Color primaryTextColor = Colors.white;
Color secondaryColor = Colors.black;
const Color bgColor = Color.fromARGB(255, 243, 255, 238);
const Color colorText = Color.fromARGB(255, 137, 137, 137);
const Color bgColorLogin_Register = Color.fromARGB(127, 217, 217, 217);
Color secondaryBGColor = Color.fromARGB(255, 217, 217, 217); //#D9D9D9
//Button Style
ButtonStyle customButtonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
    EdgeInsets.only(top: 15, bottom: 15),
  ),
  shape: MaterialStateProperty.all<OutlinedBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  ),
);
ButtonStyle signUpStyleButton = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
    EdgeInsets.only(top: 15, bottom: 15),
  ),
  shape: MaterialStateProperty.all<OutlinedBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
          10.0), // Sesuaikan dengan radius yang Anda inginkan
    ),
  ),
);
ButtonStyle iconStyleButton = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
    EdgeInsets.only(top: 5, bottom: 5),
  ),
  shape: MaterialStateProperty.all<OutlinedBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
          50.0), // Sesuaikan dengan radius yang Anda inginkan
    ),
  ),
);
ButtonStyle iconStyleButton2 = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
  shape: MaterialStateProperty.all<OutlinedBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
          50.0), // Sesuaikan dengan radius yang Anda inginkan
    ),
  ),
);

//Text Style

TextStyle primaryText = GoogleFonts.inter(
    textStyle: TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w700,
        fontSize: figmaFontsize(36)));

TextStyle primaryTextBl = GoogleFonts.inter(
    textStyle: TextStyle(
        color: secondaryColor,
        fontWeight: FontWeight.w700,
        fontSize: figmaFontsize(24)));

TextStyle btnlogin = GoogleFonts.inter(
    textStyle: TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w700,
        fontSize: figmaFontsize(24)));

TextStyle btnsignup = GoogleFonts.inter(
    textStyle: TextStyle(
        color: secondaryColor,
        fontWeight: FontWeight.w700,
        fontSize: figmaFontsize(24)));

TextStyle specialText = GoogleFonts.inter(
    textStyle: TextStyle(
        color: primaryColor,
        fontWeight: FontWeight.w700,
        fontSize: figmaFontsize(24)));

TextStyle secondaryText = GoogleFonts.inter(
    textStyle: TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w400,
        fontSize: figmaFontsize(24)));

TextStyle secondaryTextBl = GoogleFonts.inter(
    textStyle: TextStyle(
        color: secondaryColor,
        fontWeight: FontWeight.w400,
        fontSize: figmaFontsize(24)));

TextStyle subHeaderText = GoogleFonts.inter(
    textStyle: TextStyle(
        color: secondaryColor,
        fontWeight: FontWeight.w700,
        fontSize: figmaFontsize(24)));

TextStyle contentText = GoogleFonts.inter(
    textStyle: TextStyle(
        color: secondaryColor,
        fontWeight: FontWeight.w500,
        fontSize: figmaFontsize(14)));

<<<<<<< HEAD
=======
TextStyle contentTextGrey = GoogleFonts.inter(
    textStyle: TextStyle(
        color: colorText,
        fontWeight: FontWeight.w500,
        fontSize: figmaFontsize(14)));

>>>>>>> 006a7f3033f24c6431d40f51024cc32e90feb699
TextStyle contentTextVer3 = GoogleFonts.inter(
    textStyle: TextStyle(
        color: secondaryColor,
        fontWeight: FontWeight.w700,
        fontSize: figmaFontsize(14)));
TextStyle contentTextVer4 = GoogleFonts.inter(
    textStyle: TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w700,
        fontSize: figmaFontsize(14)));

TextStyle contentTextVer2 = GoogleFonts.inter(
    textStyle: TextStyle(
        color: primaryTextColor,
        fontWeight: FontWeight.w500,
        fontSize: figmaFontsize(20)));

TextStyle contentTextVer2Bl = GoogleFonts.inter(
    textStyle: TextStyle(
        color: secondaryColor,
        fontWeight: FontWeight.w500,
        fontSize: figmaFontsize(20)));

TextStyle contentTextVer2Grey = GoogleFonts.inter(
    textStyle: TextStyle(
        color: colorText,
        fontWeight: FontWeight.w500,
        fontSize: figmaFontsize(20)));

TextStyle normalFontBlBold = GoogleFonts.inter(
    textStyle: TextStyle(
        color: secondaryColor, fontWeight: FontWeight.bold, fontSize: 20));

TextStyle normalFontBl = GoogleFonts.inter(
    textStyle: TextStyle(color: secondaryColor, fontSize: 20));

TextStyle normalFontBlFigma = GoogleFonts.inter(
    textStyle: TextStyle(color: colorText, fontSize: figmaFontsize(20)));

TextStyle normalFontBlFigma2 = GoogleFonts.inter(
    textStyle: TextStyle(color: colorText, fontSize: figmaFontsize(14)));

TextStyle normalFontBlFigmaBlack = GoogleFonts.inter(
    textStyle: TextStyle(color: secondaryColor, fontSize: figmaFontsize(14)));

//IMAGE ASSETS
String image_awal_set = "assets/image_awal_set.png";
String image_signup_login = "assets/image_signup_login.png";
String image_map = "assets/image_map.png";
String image_logo_holytea = "assets/image_logo_holytea.png";
String profile = "assets/profile.png";
String ads_1 = "assets/ads_1.png";
String ads_2 = "assets/ads_2.png";
