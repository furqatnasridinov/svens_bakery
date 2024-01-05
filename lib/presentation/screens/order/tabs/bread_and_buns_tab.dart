import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../components/components.dart';

@RoutePage()
class BreadAndBunsTabScreen extends StatelessWidget {
  const BreadAndBunsTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: PoppinsCustomText(
        text: "Here will be breads and buns ",
      )),
    );
  }
}
