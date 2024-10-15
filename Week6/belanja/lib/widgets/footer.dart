// footer.dart
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: const Color.fromARGB(177, 255, 255, 255),
      child: Center(
        child: Text(
          '© 2241720054 | Silfi Nazarina',
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
