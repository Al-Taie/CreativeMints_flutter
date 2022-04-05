import 'package:flutter/material.dart';

class Rectangle extends StatelessWidget {
  late Color color;
  late IconData icon;
  late String title;
  late String content;

  Rectangle(
      {Key? key,
      required Color color,
      required IconData icon,
      required String title,
      required String content})
      : super(key: key) {
    this.color = color;
    this.icon = icon;
    this.title = title;
    this.content = content;
  }

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
                  fontWeight: FontWeight.bold
              ),
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
