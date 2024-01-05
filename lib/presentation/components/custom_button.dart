import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svens_bakery/presentation/components/components.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  Color buttonColor;
  Color borderColor;
  final String text;
  Color textColor;
  double? width;
  double? height;
  double? fontSize;
  FontWeight? fontWeight;
  CustomButton(
      {super.key,
      required this.onPressed,
      required this.text,
      this.width = double.maxFinite,
      this.textColor = Colors.white,
      this.height = 34,
      this.fontSize = 15,
      this.fontWeight = FontWeight.w500,
      this.borderColor = Colors.transparent,
      this.buttonColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width?.w,
      height: height?.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
            EdgeInsets.zero,
          ),
          backgroundColor: MaterialStatePropertyAll<Color>(buttonColor),
          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.r),
              side: BorderSide(color: borderColor, width: 1.w),
            ),
          ),
          elevation: const MaterialStatePropertyAll<double>(0),
          overlayColor: MaterialStateProperty.resolveWith(
            (states) {
              return states.contains(MaterialState.pressed)
                  ? Colors.white.withOpacity(0.07)
                  : null;
            },
          ),
        ),
        child: PoppinsCustomText(
          color: textColor,
          text: text,
          fontSize: fontSize!,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
