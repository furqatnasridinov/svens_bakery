import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Screen,Route")
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            page: BottomNavigationHandlerRoute.page,
            path: "/",
            children: [
              AutoRoute(page: HomeRoute.page),
              AutoRoute(page: WalletRoute.page),
              AutoRoute(page: OrderRoute.page, children: [
                AutoRoute(page: BakeryItemTabRoute.page),
                AutoRoute(page: DealsTabRoute.page),
                AutoRoute(page: BreadAndBunsTabRoute.page),
              ]),
              AutoRoute(page: ReOrderRoute.page),
              AutoRoute(page: ProfileRoute.page),
            ]),
      ];
}
