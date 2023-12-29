import 'package:flutter/material.dart';
import 'package:partners_room/src/cabinet.dart';
import 'package:partners_room/src/registration.dart';
import 'package:partners_room/src/supplier.dart';
import 'package:partners_room/src/supplier_catalog.dart';
import 'package:partners_room/src/user.dart';
import './src/home.dart';

void main () => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      routes: {
        '/home': (context) => Home(),
        '/supplier': (context) => Supplier(),
        '/suppliercatalog': (context) => SupplierCatalog(),
        '/user': (context) => User(),
        '/registration': (context) => RegistrationForm(),
        '/cabinet': (context) => Cabinet()
      },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Color(0xFF1A91FF),
          ),
        ),
      home: Home(),
    );
  }
}