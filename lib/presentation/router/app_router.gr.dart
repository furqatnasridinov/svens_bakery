// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BakeryItemTabRoute.name: (routeData) {
      final args = routeData.argsAs<BakeryItemTabRouteArgs>(
          orElse: () => const BakeryItemTabRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BakeryItemTabScreen(key: args.key),
      );
    },
    BottomNavigationHandlerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomNavigationHandlerScreen(),
      );
    },
    BreadAndBunsTabRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BreadAndBunsTabScreen(),
      );
    },
    DealsTabRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DealsTabScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    OrderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrderScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    ReOrderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ReOrderScreen(),
      );
    },
    WalletRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const WalletScreen(),
      );
    },
  };
}

/// generated route for
/// [BakeryItemTabScreen]
class BakeryItemTabRoute extends PageRouteInfo<BakeryItemTabRouteArgs> {
  BakeryItemTabRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          BakeryItemTabRoute.name,
          args: BakeryItemTabRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'BakeryItemTabRoute';

  static const PageInfo<BakeryItemTabRouteArgs> page =
      PageInfo<BakeryItemTabRouteArgs>(name);
}

class BakeryItemTabRouteArgs {
  const BakeryItemTabRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'BakeryItemTabRouteArgs{key: $key}';
  }
}

/// generated route for
/// [BottomNavigationHandlerScreen]
class BottomNavigationHandlerRoute extends PageRouteInfo<void> {
  const BottomNavigationHandlerRoute({List<PageRouteInfo>? children})
      : super(
          BottomNavigationHandlerRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigationHandlerRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BreadAndBunsTabScreen]
class BreadAndBunsTabRoute extends PageRouteInfo<void> {
  const BreadAndBunsTabRoute({List<PageRouteInfo>? children})
      : super(
          BreadAndBunsTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'BreadAndBunsTabRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DealsTabScreen]
class DealsTabRoute extends PageRouteInfo<void> {
  const DealsTabRoute({List<PageRouteInfo>? children})
      : super(
          DealsTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'DealsTabRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrderScreen]
class OrderRoute extends PageRouteInfo<void> {
  const OrderRoute({List<PageRouteInfo>? children})
      : super(
          OrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ReOrderScreen]
class ReOrderRoute extends PageRouteInfo<void> {
  const ReOrderRoute({List<PageRouteInfo>? children})
      : super(
          ReOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReOrderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [WalletScreen]
class WalletRoute extends PageRouteInfo<void> {
  const WalletRoute({List<PageRouteInfo>? children})
      : super(
          WalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
