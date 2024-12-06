import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double size; // Logonun boyutunu özelleştirmek için bir parametre
  final String textBelowLogo; // Logonun altında bir yazı göstermek için (isteğe bağlı)

  const Logo({this.size = 100, this.textBelowLogo = ''}); // Varsayılan değerler

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Logo resmi
        Image.asset(
          'assets/logo.png', // Logonun dosya yolu
          width: size,
          height: size,
        ),
        // Logonun altında isteğe bağlı metin
        if (textBelowLogo.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              textBelowLogo,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
      ],
    );
  }
}
