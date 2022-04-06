import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;

  const Category({Key? key,
    this.color = Colors.white,
    required this.icon,
    required this.title})
      : super(key: key);

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
              const SizedBox(width: 8),
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
