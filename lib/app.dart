import 'package:flutter/material.dart';

import 'core/ui/app_theme.dart';
import 'features/dynamics/presentation/pages/dynamics_page.dart';

class YourHealthApp extends StatelessWidget {
  const YourHealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const DynamicsPage(),
    );
  }
}
