import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final Function(String) onSearch; 
  final String hintText; 

  const SearchBar({
    required this.onSearch,
    this.hintText = 'Ara...', 
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(Icons.search), 
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          filled: true,
          fillColor: Colors.grey[200],
        ),
        onChanged: (value) => onSearch(value), 
      ),
    );
  }
}
