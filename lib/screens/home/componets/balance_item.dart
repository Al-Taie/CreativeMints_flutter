import 'package:flutter/material.dart';

class BalanceItem extends StatelessWidget {
  late Color color;
  late Color backgroundColor;
  late Color fontColor;
  late IconData icon;
  late String title;
  late String content;

  BalanceItem(
      {Key? key,
      required Color color,
      Color backgroundColor = Colors.white,
      Color fontColor = Colors.white,
      required IconData icon,
      required String title,
      required String content})
      : super(key: key) {
    this.backgroundColor = backgroundColor;
    this.fontColor = fontColor;
    this.color = color;
    this.icon = icon;
    this.title = title;
    this.content = content;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 164,
      width: 128,
      decoration:
          BoxDecoration(color: backgroundColor, borderRadius: BorderRadius.circular(8)),
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
            SizedBox(height: 8),
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
