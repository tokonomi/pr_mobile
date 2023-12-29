import 'package:flutter/material.dart';
import 'package:partners_room/src/widgets/supplier_cards.dart';
import 'package:partners_room/src/widgets/supplier_info.dart';

class Supplier extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: Icon(Icons.notifications), // Иконка 1
              onPressed: () {
                // Обработчик для первой иконки
              },
            ),
            IconButton(
                icon: Icon(Icons.home), // Иконка 1
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                  // Обработчик для первой иконки
                }
            ),
            SizedBox(width: 15)
          ],
          title: Text('Metal product'),
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.network(
                  'https://images.unsplash.com/photo-1557053819-aa6046add523?q=80&w=1332&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  height: 200.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 130.0,
                  left: 20.0,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage('https://images.unsplash.com/photo-1556283253-1e48b95dc3c7?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                ),
                Positioned(
                    top: 160.0,
                    left: 130.0,
                    child: Text(
                      'Metal product',
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500
                      ),
                    )
                ),
              ],
            ),
            SupplierInfo(),
          ],
        ),
      )
    );
  }
}

