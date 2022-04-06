import 'package:flutter/material.dart';

class Rectangle extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title, content;

  const Rectangle(
      {Key? key,
      required this.color,
      required this.icon,
      required this.title,
      required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128,
      width: 128,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            Container(
              height: 44,
              width: 44,
              child: Icon(icon, color: color, size: 32),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
            ),
            const SizedBox(height: 22),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              content,
              style: const TextStyle(fontSize: 12, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
