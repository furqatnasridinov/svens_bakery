import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svens_bakery/infrastructure/app_colors.dart';
import 'package:svens_bakery/infrastructure/app_constants.dart';
import 'package:svens_bakery/presentation/router/app_router.dart';

@RoutePage()
class BottomNavigationHandlerScreen extends StatelessWidget {
  const BottomNavigationHandlerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        WalletRoute(),
        OrderRoute(),
        ReOrderRoute(),
        ProfileRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: AppColors.darkGrey,
                selectedItemColor: AppColors.greenStyle,
                unselectedItemColor: Colors.white,
                selectedLabelStyle: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelStyle: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
                currentIndex: tabsRouter.activeIndex,
                onTap: (index) {
                  tabsRouter.setActiveIndex(index);
                },
                items: [
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      AppConstants.homeLogoSvg,
                      height: tabsRouter.activeIndex == 0 ? 50.h : 35.h,
                      width: 50.w,
                      colorFilter: ColorFilter.mode(
                        tabsRouter.activeIndex == 0
                            ? AppColors.greenStyle
                            : Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      AppConstants.walletLogoSvg,
                      height: tabsRouter.activeIndex == 1 ? 50.h : 35.h,
                      width: 50.w,
                      colorFilter: ColorFilter.mode(
                        tabsRouter.activeIndex == 1
                            ? AppColors.greenStyle
                            : Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                    label: 'Wallet',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      AppConstants.orderLogoSvg,
                      height: tabsRouter.activeIndex == 2 ? 50.h : 35.h,
                      width: 50.w,
                      colorFilter: ColorFilter.mode(
                        tabsRouter.activeIndex == 2
                            ? AppColors.greenStyle
                            : Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                    label: 'Order',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      AppConstants.reorderLogoSvg,
                      height: tabsRouter.activeIndex == 3 ? 50.h : 35.h,
                      width: 50.w,
                      colorFilter: ColorFilter.mode(
                        tabsRouter.activeIndex == 3
                            ? AppColors.greenStyle
                            : Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                    label: 'Re-Order',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      AppConstants.profileLogoSvg,
                      height: tabsRouter.activeIndex == 4 ? 50.h : 35.h,
                      width: 50.w,
                      colorFilter: ColorFilter.mode(
                        tabsRouter.activeIndex == 4
                            ? AppColors.greenStyle
                            : Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                    label: 'Profile',
                  ),
                ]),
          ),
        );
      },
    );
  }
}
