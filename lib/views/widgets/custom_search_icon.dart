// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    Key? key,
    required this.icon,
    this.onPressed,
  }) : super(key: key);
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 28,
          )),
    );
  }
}
