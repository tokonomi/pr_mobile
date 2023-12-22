import 'package:flutter/material.dart';

class SupplierCards extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.only(bottom: 10), child: Text('Популярные продукты', style: TextStyle(
          fontSize: 26.0,
          fontWeight: FontWeight.w500,))),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 2),
                    blurRadius: 4.0
                )
              ]
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
            child: SingleChildScrollView(
              clipBehavior: Clip.hardEdge,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildCard(),
                  SizedBox(width: 12),
                  buildCard(),
                  SizedBox(width: 12),
                  buildCard(),
                  SizedBox(width: 12),
                  buildCard(),
                  SizedBox(width: 12),
                  buildCard(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildCard(){
    return Container(
      width: 105,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1598638567141-696be94b464a?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10, bottom: 1, left: 2), child: Text('BakuMetal', textAlign: TextAlign.left, style: TextStyle(fontSize: 14.36))),
          Padding(padding: EdgeInsets.only(top: 5, bottom: 3, left: 2), child: Text('Баку, 4 года., 180 сотруд., 4.5/5.0', style: TextStyle(fontSize: 11.77)))
        ],
      ),

    );
  }
}