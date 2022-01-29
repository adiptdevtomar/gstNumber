// Created by Adipt on 27/01/2022

import 'package:flutter/material.dart';
import 'package:gst_search/constants/colors.dart';

class CurvedContainer extends StatelessWidget {
  final Widget child;

  const CurvedContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        color: QColors.green,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      child: child,
    );
  }
}
