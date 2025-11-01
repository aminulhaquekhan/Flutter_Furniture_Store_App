// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';

class IconBadge extends StatefulWidget {
  final IconData icon;

  const IconBadge({super.key, required this.icon}); // ✅ updated for null safety

  @override
  _IconBadgeState createState() => _IconBadgeState();
}

class _IconBadgeState extends State<IconBadge> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Icon(
          widget.icon,
        ),
        Positioned(
          right: 0.0,
          child: Container(
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(6),
            ),
            constraints: BoxConstraints(
              minWidth: 13,
              minHeight: 13,
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 1),
              child: Text(
                '2',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}