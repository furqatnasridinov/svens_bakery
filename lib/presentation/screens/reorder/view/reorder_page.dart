import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ReOrderScreen extends StatelessWidget {
  const ReOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("ReOrder Screen "),
      ),
    );
  }
}
