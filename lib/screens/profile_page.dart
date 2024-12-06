import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profilim')),
      body: Column(
        children: [
          ProfileHeader(name: 'Ferhat Bolat', role: 'İş Arayan'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Yetenekler: Mobil Uygulama Geliştirme',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

