import 'package:flutter/material.dart';

class JobDetailPage extends StatelessWidget {
  final String jobTitle;
  final String description;
  final String employer;

  const JobDetailPage({
    required this.jobTitle,
    required this.description,
    required this.employer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(jobTitle)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              jobTitle,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(description, style: TextStyle(fontSize: 16)),
            SizedBox(height: 10),
            Text('İşveren: $employer', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
