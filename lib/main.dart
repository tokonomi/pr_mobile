import 'package:flutter/material.dart';
import 'package:partners_room/src/supplier.dart';
import 'package:partners_room/src/supplier_catalog.dart';
import './src/home.dart';

void main () => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            color: Color(0xFF1A91FF),
          ),
        ),
      home: SupplierCatalog()
    );
  }
}