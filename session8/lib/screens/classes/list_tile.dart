import 'package:flutter/material.dart';

Widget CustomListTile() {
  return ListTile(
    title: const Text(
      'Oeschinen Lake Campground',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    ),
    subtitle: Row(
      children: const [
        Icon(Icons.location_on, color: Colors.red, size: 16),
        SizedBox(width: 4),
        Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.grey)),
      ],
    ),
    trailing: Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(Icons.star, color: Colors.yellow, size: 18),
          SizedBox(width: 4),
          Text('4.1', style: TextStyle(color: Colors.white)),
        ],
      ),
    ),
  );
}
