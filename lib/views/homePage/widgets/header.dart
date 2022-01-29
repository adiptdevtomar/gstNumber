// Created by Adipt on 28/01/2022

part of '../view.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedContainer(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Select the type for',
              style: TextStyle(
                color: Colors.white,
                fontSize: 11.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'GST Number Search Tool',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ProfileTabBar(),
          ],
        ),
      ),
    );
  }
}
