// Created by Adipt on 28/01/2022

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gst_search/constants/colors.dart';

class QButton extends StatelessWidget {
  final bool isLoading;
  final String title;
  final Function() onPressed;

  const QButton({
    Key? key,
    this.isLoading = false,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        backgroundColor: QColors.green,
      ),
      onPressed: (isLoading) ? () {} : onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: (isLoading)
            ? const CupertinoActivityIndicator(
                color: Colors.white,
              )
            : Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
      ),
    );
  }
}
