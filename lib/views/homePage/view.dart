// Created by Adipt on 27/01/2022

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gst_search/constants/colors.dart';
import 'package:gst_search/data/GstProfile.dart';
import 'package:gst_search/helpers/ApiHelper/apiHelper.dart';
import 'package:gst_search/views/SharedWidgets/button.dart';
import 'package:gst_search/views/SharedWidgets/curved_container.dart';
import 'package:gst_search/views/gst_profile/view.dart';

part 'widgets/tabbar.dart';

part 'widgets/header.dart';

part 'controller.dart';

class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(_stateProvider);
    final stateController = ref.watch(_stateProvider.notifier);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Header(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Enter GST number',
                    style: TextStyle(color: Colors.grey, fontSize: 10.0),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  TextField(
                    onChanged: stateController.onGstNumberChanged,
                    decoration: const InputDecoration(
                      hintText: 'Ex. 07AACCM9910C1ZP',
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 13.0,
                      ),
                      fillColor: Color(0xfff2f2f2),
                      filled: true,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  (state.hasError)
                      ? const Text(
                          'Cannot be left Empty.',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 11.0,
                          ),
                        )
                      : const SizedBox.shrink(),
                  const SizedBox(
                    height: 20.0,
                  ),
                  QButton(
                    isLoading: state.isLoading,
                    title: 'Search',
                    onPressed: () async {
                      final profile = await stateController.fetchGstInfo();
                      if (profile != null) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => GstProfileView(
                              profile: profile,
                              gstNumber: state.gstNumber,
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
