import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        ListTile(
          title: const Text(
            'FlutterTips',
            style: TextStyle(color: Colors.black, fontSize: 26),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 16),
            child: Text(
              'build your career ',
              style:
                  TextStyle(color: Colors.black.withOpacity(.5), fontSize: 18),
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.trash,
              color: Colors.black,
              size: 24,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24.0),
          child: Text(
            'March 23, 2022',
            style: TextStyle(color: Colors.black.withOpacity(.4), fontSize: 14),
          ),
        )
      ]),
    );
  }
}
