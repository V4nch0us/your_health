import 'package:flutter/material.dart';

import 'features/dynamics/presentation/pages/dynamics_page.dart';

class YourHealthApp extends StatelessWidget {
  const YourHealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DynamicsPage(),
    );
  }
}
