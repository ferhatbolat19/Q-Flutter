import 'package:flutter/material.dart';
import '../screens/job_home_page.dart';
import '../screens/job_detail_page.dart';
import '../screens/profile_page.dart';

class AppRoutes {
  static const String home = '/';
  static const String jobDetail = '/jobDetail';
  static const String profile = '/profile';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (context) => JobHomePage());
      case jobDetail:
        final args = settings.arguments as Map<String, String>?;
        return MaterialPageRoute(
          builder: (context) => JobDetailPage(
            jobTitle: args?['title'] ?? 'Başlık Bulunamadı',
            description: args?['description'] ?? 'Açıklama Bulunamadı',
            employer: args?['employer'] ?? 'İşveren Bilgisi Yok',
          ),
        );
      case profile:
        return MaterialPageRoute(builder: (context) => ProfilePage());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('Sayfa bulunamadı')),
          ),
        );
    }
  }
}
