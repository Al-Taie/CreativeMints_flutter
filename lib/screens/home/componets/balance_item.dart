import 'package:flutter/material.dart';

class BalanceItem extends StatelessWidget {
  final Color color, backgroundColor, fontColor;
  final IconData icon;
  final String title, content;

  const BalanceItem(
      {Key? key,
      required this.color,
      this.backgroundColor = Colors.white,
      this.fontColor = Colors.white,
      required this.icon,
      required this.title,
      required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 164,
      width: 128,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(8)),
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
              style: TextStyle(
                fontSize: 21,
                color: fontColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              content,
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }
}
