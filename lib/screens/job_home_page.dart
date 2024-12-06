import 'package:flutter/material.dart';
import '../widgets/job_card.dart';
import '../widgets/custom_drawer.dart';

class JobHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('İş Platformu')),
      drawer: CustomDrawer(),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          JobCard(
            title: 'Yazılım Mühendisi',
            description: 'Uzaktan çalışacak yazılım mühendisi aranıyor.',
            employer: 'BLT Teknoloji',
          ),
          JobCard(
            title: 'Grafik Tasarımcı',
            description: 'Freelance grafik tasarımcı aranıyor.',
            employer: 'Tasarım Ajansı',
          ),
        ],
      ),
    );
  }
}
