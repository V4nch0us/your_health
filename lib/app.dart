import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'core/ui/app_theme.dart';
import 'features/dynamics/presentation/pages/dynamics_page.dart';

class YourHealthApp extends StatelessWidget {
  const YourHealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const DynamicsPage(),
    );
  }
}
