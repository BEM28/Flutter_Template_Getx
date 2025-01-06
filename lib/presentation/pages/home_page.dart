import 'package:flutter/material.dart';
import 'package:flutter_template_getx/utils/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          scrolledUnderElevation: 0,
          title: const Text(
            'FLutter Template',
            style: TextStyle(
              color: AppColors.secondary,
              fontSize: 18,
            ),
          ),
        ),
        body: const Center(
          child: Text(
            'FLutter Template',
            style: TextStyle(
              color: AppColors.secondary,
              fontSize: 18,
            ),
          ),
        ));
  }
}
