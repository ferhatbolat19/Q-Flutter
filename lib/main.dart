import 'package:flutter/material.dart';
import 'core/routes.dart';

void main() => runApp(JobPlatformApp());

class JobPlatformApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İş Platformu',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.generateRoute,
      initialRoute: AppRoutes.home, // İlk açılacak sayfa
    );
  }
}
