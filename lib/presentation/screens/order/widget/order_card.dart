import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:svens_bakery/infrastructure/services/app_constants.dart';
import '../../../components/components.dart';

class OrderCard extends StatelessWidget {
  final String photo;
  final String name;
  const OrderCard({super.key, required this.photo, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w).copyWith(top: 25.h),
      width: double.maxFinite,
      // uncomment this height when photos will change
      //height: 135.h,
      //color: Colors.green,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            //color: Colors.red,
            height: 150.h,
            child: Image.asset(
              photo,
              fit: BoxFit.fitHeight,
            ),
          ),
          5.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PoppinsCustomText(
                text: name,
                isUppercase: true,
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    AppConstants.circleDollarSvg,
                    width: 27.w,
                    height: 27.h,
                  ),
                  7.horizontalSpace,
                  PoppinsCustomText(
                    text: "Price Range",
                    fontWeight: FontWeight.w700,
                  )
                ],
              ),
              8.verticalSpace,
              Padding(
                padding: EdgeInsets.only(left: 40.w),
                child: PoppinsCustomText(
                  text: "\$20-\$30",
                  fontWeight: FontWeight.w400,
                ),
              ),
              6.verticalSpace,
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: purchaseButton(() {}),
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget purchaseButton(void Function()? onPressed) {
  return SizedBox(
    width: 106.w,
    height: 33.h,
    child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
            EdgeInsets.zero,
          ),
          backgroundColor: const MaterialStatePropertyAll<Color>(Colors.black),
          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.r),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PoppinsCustomText(
              text: "Add to Cart",
              color: Colors.white,
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
            ),
            5.horizontalSpace,
            Icon(
              Icons.shopping_cart_checkout,
              color: Colors.white,
              size: 20.r,
            )
          ],
        )),
  );
}
