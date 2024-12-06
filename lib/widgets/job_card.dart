import 'package:flutter/material.dart';
import '../core/routes.dart';

class JobCard extends StatelessWidget {
  final String title;
  final String description;
  final String employer;

  const JobCard({
    required this.title,
    required this.description,
    required this.employer,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(description),
            SizedBox(height: 10),
            Text('İşveren: $employer'),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.jobDetail,
                  arguments: {
                    'title': title,
                    'description': description,
                    'employer': employer,
                  },
                );
              },
              child: Text('Detayları Görüntüle'),
            ),
          ],
        ),
      ),
    );
  }
}
