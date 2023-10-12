// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DeatilsBar extends StatelessWidget {
  const DeatilsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 50,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomLeft: Radius.circular(25))),
            width: MediaQuery.sizeOf(context).width / 3,
            child: const Text(
              '19.9\$',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 50,
            decoration: const BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.only(topRight: Radius.circular(25), bottomRight: Radius.circular(25))),
            width: MediaQuery.sizeOf(context).width / 3,
            child: const Text(
              'Free preview',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
