import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamii_app/core/utils/AssetsManager.dart';
import 'package:islamii_app/core/utils/stringsManager.dart' ;
import 'package:islamii_app/presentation/Home/tabs/hadithTab/hadith_tab.dart';
import 'package:islamii_app/presentation/Home/tabs/quranTab/quran_tab.dart';
import 'package:islamii_app/presentation/Home/tabs/radioTab/radio_tab.dart';
import 'package:islamii_app/presentation/Home/tabs/sebhaTab/tsbeh_tab.dart';
import 'package:islamii_app/presentation/Home/tabs/settingsTab/settings_tab.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    radioTab() ,
    hadithTab(),
    tsbehTab() ,
    quranTab() ,
    settingsTab(),

  ] ;

  int selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(AssetsManager.lightBackground) ,
        fit: BoxFit.fill )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(stringsManager.appTitle),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedItemIndex = index ;

            });

          },
            currentIndex: selectedItemIndex,

            items : [
              BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage(AssetsManager.radioIcon)),label: 'Radio'),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage(AssetsManager.hadithIcon)),label: 'Hadith'),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage(AssetsManager.sebhaIcon)),label: 'Sebha'),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage(AssetsManager.quranIcon)),label: 'Quran'),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon:Icon(Icons.settings),label: 'Settings'),




            ]),

        body: tabs[selectedItemIndex],


      ),
    );
  }
}
