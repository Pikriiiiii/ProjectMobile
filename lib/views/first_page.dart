import 'package:flutter/material.dart';
import 'package:mobile_mrogramming/data/dev_data.dart';
import 'package:mobile_mrogramming/utils/app_color.dart';
import 'package:mobile_mrogramming/utils/app_strings.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../widget/skills_box.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key, required this.onNextPage});
  final VoidCallback onNextPage;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    //agar temanya disesuaikan
    ThemeData themeData = Theme.of(context);

    return Column(
      children: [
        //Empty Space
        SizedBox(
          height: size.height * .05,
        ),

        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: AppColors.appPrimaryColor, shape: BoxShape.circle),
          child: CircleAvatar(
            backgroundImage: NetworkImage(AppStrings.profileImgUrl),
            radius: size.height * 0.12,
          ),
        ),

//Empty Space
        SizedBox(
          height: size.height * .05,
        ),

        Text(
          DevData.devData.nama,
          style: themeData.textTheme.displayLarge,
        ),

        //Empty Space
        SizedBox(
          height: size.height * .03,
        ),

        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: List.generate(
              DevData.devData.skillAndProgress.length,
              (index) => SkillsBox(
                    title: DevData.devData.skillAndProgress[index].name,
                  )),
        ),
        //Empty Space
        SizedBox(
          height: size.height * .03,
        ),

        //skills and progress
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: List.generate(
                DevData.devData.skillAndProgress.length,
                (index) => Column(
                      children: [
                        Text(
                          DevData.devData.skillAndProgress[index].name,
                          style: themeData.textTheme.bodyMedium,
                        ),
                        SizedBox(
                          height: size.height * .01,
                        ),
                        LinearPercentIndicator(
                          lineHeight: size.height * .02,
                          width: size.width * .8,
                          alignment: MainAxisAlignment.center,
                          barRadius: Radius.circular(50),
                          progressColor: AppColors.appPrimaryColor,
                          backgroundColor:
                              AppColors.appPrimaryColor.withOpacity(.2),
                          percent:
                              DevData.devData.skillAndProgress[index].progress,
                        ),
                        SizedBox(
                          height: size.height * .02,
                        ),
                      ],
                    )),
          ),
        ),

        //Responsive Space
        Expanded(child: Container( )),


        IconButton(onPressed: onNextPage, icon: Icon(Icons.arrow_circle_down_rounded)),

        SizedBox(
          height: size.height * .03,
        ),

      ],
    );
  }
}
