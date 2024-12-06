import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String role;

  const ProfileHeader({required this.name, required this.role});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.blue,
      child: Row(
        children: [
          CircleAvatar(child: Icon(Icons.person)),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TextStyle(color: Colors.white, fontSize: 18)),
              Text(role, style: TextStyle(color: Colors.white70)),
            ],
          ),
        ],
      ),
    );
  }
}
