import 'package:flutter/material.dart';

class SkillsBox extends StatelessWidget {
  const SkillsBox({
    super.key,
    required this.title,
  });

  final String title ;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    //agar temanya disesuaikan
    ThemeData themeData = Theme.of(context);
    return Container(
        padding: EdgeInsets.symmetric(vertical: size.height * .005, horizontal: size.height * .01),
        margin: EdgeInsets.all(size.width * .01),
        decoration: BoxDecoration(
            color: themeData.primaryColor,
            borderRadius: BorderRadius.circular(30)
        ),
        child: Text(title,style: themeData.textTheme.bodyMedium,
        ));
  }
}