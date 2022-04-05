import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  late Color color;
  late IconData icon;
  late String title;

  Category(
      {Key? key,
      Color color = Colors.white,
      required IconData icon,
      required String title})
      : super(key: key) {
    this.color = color;
    this.icon = icon;
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 75,
        decoration:
            BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                    width: 1
                ),
                borderRadius: BorderRadius.circular(8)
            ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                child: Icon(icon, color: Colors.white, size: 28),
                decoration: BoxDecoration(
                  color: color,
                    borderRadius: BorderRadius.circular(50)),
              ),
              SizedBox(width: 8),
              Text(title,
                softWrap: true,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
