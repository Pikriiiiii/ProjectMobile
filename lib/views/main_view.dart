import 'package:flutter/material.dart';
import 'package:mobile_mrogramming/views/first_page.dart';
import 'package:mobile_mrogramming/views/second_page.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {


  late PageController pageController ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();

  }

  void onNextPage (int page){
    pageController.animateToPage(page, duration: Duration(microseconds: 500), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {

    //agar responsive terhadap ukuran layar
    Size size = MediaQuery.of(context).size;


    //agar temanya disesuaikan
    ThemeData themeData = Theme.of(context);

    return Scaffold(
      //backgroundColor: Colors.redAccent,
      body: SizedBox(
        width: size.width,
        height: size.height,
          child: PageView(
            controller: pageController,
            scrollDirection: Axis.vertical,
            children: [
              FirstPage(
                onNextPage: () => onNextPage(1)
              ),
              SecondPage(
                  onNextPage: () => onNextPage(0)
              ),
            ],
          )
      ),
    );
  }
}

