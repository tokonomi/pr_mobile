import 'package:flutter/material.dart';
import 'package:partners_room/src/widgets/supplier_cards.dart';
import 'package:partners_room/src/widgets/supplier_info.dart';
import 'package:partners_room/src/widgets/user_info.dart';
import 'package:partners_room/src/widgets/user_links.dart';

class User extends StatelessWidget{
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
          title: Text('Username'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.network(
                    'https://images.unsplash.com/photo-1558546436-ba420d6a2f2f?q=80&w=1171&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
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
                              image: NetworkImage('https://images.unsplash.com/photo-1639149888905-fb39731f2e6c?q=80&w=1064&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                  ),
                  Positioned(
                      top: 160.0,
                      left: 130.0,
                      child: Text(
                        'Username',
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w500
                        ),
                      )
                  ),
                ],
              ),
              SizedBox(height: 35),
              UserInfo(),
              UserLinks(),
              SizedBox(height: 35)
            ],
          ),
        )
    );
  }
}

