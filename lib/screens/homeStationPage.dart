import 'package:flutter/material.dart';
import 'package:uma_radio_campus/screens/allStationPage.dart';
import 'package:uma_radio_campus/screens/favorisStationPage.dart';
import 'package:uma_radio_campus/screens/newStationPage.dart';
import 'package:uma_radio_campus/utils/colorsApp.dart';
import 'package:uma_radio_campus/utils/languageFile.dart';
import 'package:uma_radio_campus/widgets/presisteBottomBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            LanguageFiles.titleText,
            style: TextStyle(color: ColorsApp.substileColors),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.more_vert_rounded),
              onPressed: () {},
            )
          ],
          bottom: TabBar(
            indicatorColor: Color(0xFFF1304D),
            labelColor: Color(0xFFF1304D),
            unselectedLabelColor: Color(0xFF646D78),
            labelStyle: TextStyle(fontSize: 20.0),
            tabs: <Widget>[
              Tab(
                text: LanguageFiles.allStationTextEn,
              ),
              Tab(
                text: LanguageFiles.favorisTextEn,
              ),
              Tab(
                text: LanguageFiles.newStationTextEn,
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            AllStationPage(),
            FavorisStationPage(),
            NewStationPage(),
          ],
        ),
        persistentFooterButtons: [
         PersisBottomBarWidget(),
        ],
      ),
    );
  }
}
