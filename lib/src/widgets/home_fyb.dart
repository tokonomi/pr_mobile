import 'package:flutter/material.dart';

class Fyb extends StatelessWidget{
  @override

  Widget buildCard(String phrase){
    return Padding(padding: EdgeInsets.only(top: 10, bottom: 15),
      child: Container(
        width: 185,
        height: 45,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(0),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              Expanded(child: Text(phrase)),
              Icon(Icons.dashboard)
            ],
          ),
        )
      ),
    );
  }

  Widget build(BuildContext context){
    return Padding(padding: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Для вашего бизнеса', style: TextStyle(fontSize: 20)),
            SingleChildScrollView(
              clipBehavior: Clip.hardEdge,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildCard('Все категории'),
                  SizedBox(width: 12),
                  buildCard('Запрос сотрудничества'),
                  SizedBox(width: 12),
                  buildCard('Условия сотрудничества'),
                ],
              ),
            )
          ],
        ),
    );
  }
}