import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:svens_bakery/infrastructure/services/app_colors.dart';
import 'package:svens_bakery/infrastructure/services/app_constants.dart';
import 'package:svens_bakery/presentation/components/components.dart';

class ReorderCard extends StatelessWidget {
  const ReorderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
      //height: 270.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4.r),
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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PoppinsCustomText(
                text: "AUG 02, 9:56 AM",
                fontSize: 19.sp,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                child: Row(
                  children: [
                    PoppinsCustomText(
                      text: "20 POINTS",
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 15.h),
                      child: SvgPicture.asset(
                        AppConstants.greenStarsSvg,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          23.verticalSpace,
          // in future here will be listviewbuilder instead
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Row(
                  children: [
                    PoppinsCustomText(
                      text: "2X",
                      fontWeight: FontWeight.w700,
                    ),
                    25.horizontalSpace,
                    PoppinsCustomText(
                      text: "WILD BREAD BUN",
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
              ),
              PoppinsCustomText(
                text: "\$20",
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          5.verticalSpace,
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: PoppinsCustomText(
              text: "-\$10",
              fontWeight: FontWeight.w400,
              color: AppColors.greyText,
            ),
          ),
          5.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Row(
                  children: [
                    PoppinsCustomText(
                      text: "2X",
                      fontWeight: FontWeight.w700,
                    ),
                    25.horizontalSpace,
                    PoppinsCustomText(
                      text: "GLUTER BREAD BUN",
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
              ),
              PoppinsCustomText(
                text: "\$20",
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          13.verticalSpace,
          Divider(
            color: AppColors.greyDividerColor,
            thickness: 1.w,
          ),
          10.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              PoppinsCustomText(
                text: "TOTAL",
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
              34.horizontalSpace,
              PoppinsCustomText(
                text: "\$40",
                fontWeight: FontWeight.w600,
                color: AppColors.greenStyle,
              ),
            ],
          ),
          17.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.w),
            child: reorderButton(
              () {},
            ),
          ),
        ],
      ),
    );
  }
}

Widget reorderButton(void Function()? onPressed) {
  return SizedBox(
    width: double.maxFinite,
    height: 43.h,
    child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          padding: const MaterialStatePropertyAll<EdgeInsetsGeometry>(
            EdgeInsets.zero,
          ),
          backgroundColor: const MaterialStatePropertyAll<Color>(
            AppColors.darkGrey,
          ),
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
            Icon(
              Icons.refresh,
              color: Colors.white,
              size: 35.r,
            ),
            25.horizontalSpace,
            PoppinsCustomText(
              text: "REORDER",
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
            )
          ],
        )),
  );
}
