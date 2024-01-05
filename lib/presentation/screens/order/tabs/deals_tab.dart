import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:svens_bakery/presentation/components/components.dart';

@RoutePage()
class DealsTabScreen extends StatelessWidget {
  const DealsTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PoppinsCustomText(
          text: "Here will be deals",
        ),
      ),
    );
  }
}
