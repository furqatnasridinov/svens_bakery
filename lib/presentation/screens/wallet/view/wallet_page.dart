import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svens_bakery/infrastructure/services/app_colors.dart';
import 'package:svens_bakery/infrastructure/services/app_constants.dart';
import 'package:svens_bakery/presentation/components/components.dart';

@RoutePage()
class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // top container
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            height: 55.h,
            width: double.maxFinite,
            color: AppColors.darkGrey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.account_balance_wallet,
                  color: Colors.white,
                  size: 45.r,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Current Balance :",
                        style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      WidgetSpan(child: SizedBox(width: 4.w)),
                      TextSpan(
                        text: "\$100",
                        style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          17.verticalSpace,
          // add more button
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: CustomButton(
                onPressed: () {},
                text: "Add More Credits",
                width: 145.w,
                buttonColor: AppColors.darkGrey,
              ),
            ),
          ),
          120.verticalSpace,
          PoppinsCustomText(
            text: "Save \$ and time with John Cards",
            fontSize: 28.sp,
            fontWeight: FontWeight.w700,
            textAlign: TextAlign.center,
          ),
          50.verticalSpace,
          PoppinsCustomText(
            text: AppConstants.walletPageLongText,
            textAlign: TextAlign.center,
            fontSize: 20.sp,
          ),
          140.verticalSpace,
          Container(
            height: 55.h,
            width: double.maxFinite,
            color: AppColors.darkGrey,
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PoppinsCustomText(
                  text: "Review Orders ",
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
                Icon(
                  Icons.shopping_cart_checkout,
                  color: Colors.white,
                  size: 35.r,
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
