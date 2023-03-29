// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../constants.dart';

class CutomButton extends StatelessWidget {
  const CutomButton({
    Key? key,
    this.onTap,
  }) : super(key: key);
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(8)),
        child: const Center(
          child: Text(
            'Add',
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
