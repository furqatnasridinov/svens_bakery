import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class PoppinsCustomText extends StatelessWidget {
  final String text;
  int? maxLines;
  TextOverflow? overflow;
  TextAlign? textAlign;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  bool? isUppercase;
  double? opacity;
  FontStyle? fontStyle;
  PoppinsCustomText(
      {Key? key,
      this.isUppercase = false,
      required this.text,
      this.maxLines,
      this.overflow,
      this.textAlign,
      this.fontSize = 15,
      this.fontWeight = FontWeight.w500,
      this.color = Colors.black,
      this.opacity = 1,
      this.fontStyle = FontStyle.normal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      isUppercase == true ? text.toUpperCase() : text,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        fontStyle: fontStyle,
        fontSize: fontSize?.sp,
        fontWeight: fontWeight,
        color: color?.withOpacity(opacity!),
        fontFeatures: const [FontFeature.liningFigures()],
      ),
    );
  }
}
