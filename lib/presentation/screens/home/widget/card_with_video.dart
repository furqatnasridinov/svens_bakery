import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:svens_bakery/infrastructure/services/app_colors.dart';
import 'package:svens_bakery/infrastructure/services/app_constants.dart';
import 'package:svens_bakery/presentation/components/components.dart';

class CardWithVideo extends StatelessWidget {
  const CardWithVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 255.h,
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              color: AppColors.darkGrey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PoppinsCustomText(
                    text: "Thanks JOE",
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.greenStyle,
                  ),
                  20.horizontalSpace,
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Image.asset(
                      AppConstants.thanksJoePng,
                      width: 107.w,
                      height: 120.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    //color: Colors.red,
                    width: 275.w,
                    child: PoppinsCustomText(
                      text:
                          "Try our Best Bakery Items with the best available Deals",
                      fontSize: 16.sp,
                    ),
                  ),
                  20.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            Icon(
                              Icons.watch_later_outlined,
                              size: 20.sp,
                              color: Colors.grey,
                            ),
                            10.horizontalSpace,
                            PoppinsCustomText(
                              text: "2 hour 3 minutes",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            PoppinsCustomText(
                              text: "Play Now",
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                            ),
                            10.horizontalSpace,
                            SvgPicture.asset(
                              AppConstants.playLogoSvg,
                              width: 33.w,
                              height: 33.h,
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
