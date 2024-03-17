import 'package:flutter/material.dart';
import 'package:mobile_mrogramming/utils/app_strings.dart';

import '../data/dev_data.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.onNextPage});
  final VoidCallback onNextPage;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);
    return Column(
      children: [

        SizedBox(height: size.height * 0.05,),

        Container(
          margin: EdgeInsets.all(size.height * 0.01),
          padding: EdgeInsets.all(size.height * .015),
          //height: 100,
          width: size.width,
          decoration: BoxDecoration(
            color: themeData.cardColor,
                borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              Text(AppStrings.subJudulBio, style: themeData.textTheme.displaySmall,),
              SizedBox(height: size.height * .01,),
              Text(DevData.devData.bio,style: themeData.textTheme.bodyMedium,)
            ],
          ),
        ),

        SizedBox(height: size.height * .01,),


        //hobbies
        Container(
          margin: EdgeInsets.all(size.height * 0.01),
          padding: EdgeInsets.all(size.height * .015),
          //height: 100,
          width: size.width,
          decoration: BoxDecoration(
              color: themeData.cardColor,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              Text(AppStrings.subJudulHobbies, style: themeData.textTheme.displaySmall,),
              SizedBox(height: size.height * .01,),
              SizedBox(
                width: size.width,
                child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(DevData.devData.hobbies.length,
                          (index) => Text(
                            "${index+1}. ${DevData.devData.hobbies[index]}",
                            style: themeData.textTheme.bodyMedium,)),
                ),
              )

            ],
          ),
        ),

        SizedBox(height: size.height * .01,),


        Container(
          margin: EdgeInsets.all(size.height * 0.01),
          padding: EdgeInsets.all(size.height * .015),
          //height: 100,
          width: size.width,
          decoration: BoxDecoration(
              color: themeData.cardColor,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              Text(AppStrings.subJudulContact, style: themeData.textTheme.displaySmall,),
              SizedBox(height: size.height * .01,),
              SizedBox(
                width: size.width,
                child: Column(
                  //   mainAxisAlignment: MainAxisAlignment.,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text('Email'),
                    SizedBox(height: size.height * .01,),
                    Text(DevData.devData.email, style: TextStyle(color: Colors.white),),
                    SizedBox(height: size.height * .03,),
                    Text('Nomor Whatsapp'),
                    SizedBox(height: size.height * .01,),
                    Text(DevData.devData.no_wa, style: TextStyle(color: Colors.white),),
                  ]
                ),
              )

            ],
          ),

        ),

        //Responsive Space
        Expanded(child: Container( )),


        IconButton(onPressed: onNextPage, icon: Icon(Icons.arrow_circle_up)),

        SizedBox(
          height: size.height * .03,
        ),
        



      ],
    );
  }
}
