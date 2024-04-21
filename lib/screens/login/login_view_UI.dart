import 'package:ecommerceapp/utils/app_colors.dart';

import 'package:flutter/material.dart';

class loginview extends StatelessWidget {
  const loginview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.yellowColor,
      appBar: AppBar(
        title: const Text('Login View'),
      ),
      body: ElevatedButton(
        onPressed: () {},
        child: const Text("ramis"),
      ),
    );
  }
}
