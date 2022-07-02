import 'package:flutter/material.dart';

Widget iconButton({required Icon icon, required VoidCallback onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.5),
          borderRadius: BorderRadius.circular(12)),
      child: icon,
    ),
  );
}