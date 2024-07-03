import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String? text, Color color) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    elevation: 8,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    backgroundColor: color,
    duration: const Duration(seconds: 4),
    content: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text!,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 18,
                ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.close, color: Colors.white),
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ],
    ),
  ));
}
