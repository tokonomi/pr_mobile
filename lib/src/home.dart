import 'package:flutter/material.dart';
import 'package:partners_room/src/widgets/home_cards.dart';

import './widgets/home_search.dart';
import './widgets/home_fyb.dart';
import './widgets/home_products.dart';

class Home extends StatefulWidget {
  State<Home> createState() => HomeState();
}


class HomeState extends State<Home>{
  final  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isDrawerOpen = false;

  void openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Drawer(
        width: 265,
        child: Container(
          color: Color(0xFF00379E),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 40),
              ListTile(
                title: Text('Partner room', textAlign: TextAlign.right, style: TextStyle(fontSize: 30, color: Colors.white),),
              ),
              SizedBox(height: 55),
              ListTile(
                title: menuText('Мой кабинет'),
                onTap: () {
                  // Обработчик для Пункта 1
                },
              ),
              ListTile(
                title: menuText('Подписки'),
                onTap: () {
                  // Обработчик для Пункта 2
                },
              ),
              ListTile(
                title: menuText('Товары'),
                onTap: () {
                  // Обработчик для Пункта 2
                },
              ),
              ListTile(
                title: menuText('Партнёры'),
                onTap: () {
                  // Обработчик для Пункта 2
                },
              ),
              ListTile(
                title: menuText('Уведомления'),
                onTap: () {
                  // Обработчик для Пункта 2
                },
              ),
              ListTile(
                title: menuText('Настройки'),
                onTap: () {
                  // Обработчик для Пункта 2
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.notifications), // Иконка 1
            onPressed: () {
              // Обработчик для первой иконки
            },
          ),
          IconButton(
            icon: Icon(Icons.menu), // Иконка 1
            onPressed: () {
              openEndDrawer();
              // Обработчик для первой иконки
            }
          ),
          SizedBox(width: 15)
        ],

        title: Text('PARTNERS ROOM')),
        body: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            children: [
              HomeSearch(),
              HomeCard(),
              Fyb(),
              HomeProducts()
            ],
          )
        ),
    );
  }

  Widget menuText(title){
    return Text(title, style: TextStyle(fontSize: 24, color: Colors.white));
  }
}