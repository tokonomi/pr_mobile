import 'package:flutter/material.dart';

class HomeProducts extends StatefulWidget{
  State<HomeProducts> createState() => HomeProductsState();
}

class HomeProductsState extends State<HomeProducts>{
  @override
  Widget build(BuildContext context){
    return Padding(padding: EdgeInsets.only(bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Продукты', style: TextStyle(fontSize: 20)),
            _buildCard('Топлённое масло', 'Azersun', '09.11.2023', 'https://images.unsplash.com/photo-1598638567141-696be94b464a?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            _buildCard('Вата', 'XaçmazTTF LLC', '07.23.2023', 'https://images.unsplash.com/photo-1633873972250-e69cd8b5e31c?auto=format&fit=crop&q=80&w=1932&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            _buildCard('Metlax', 'ElnurMetlax', '09.21.2023', 'https://images.unsplash.com/photo-1598302936625-6075fbd98dd7?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            _buildCard('Pəncərə', 'QapizAZ ', '09.01.2023', 'https://images.unsplash.com/photo-1563693998336-93c10e5d8f91?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            _buildCard('Plastik qapilar ', 'QapizAZ', '09.11.2023', 'https://images.unsplash.com/photo-1481277542470-605612bd2d61?auto=format&fit=crop&q=80&w=2006&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            _buildCard('Топлённое масло', 'Azersun', '09.11.2023', 'https://images.unsplash.com/photo-1608571423539-e951b9b3871e?auto=format&fit=crop&q=80&w=1960&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            _buildCard('Metlax', 'ElnurMetlax', '09.21.2023', 'https://images.unsplash.com/photo-1598302936625-6075fbd98dd7?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
          ],
        ),
      );
  }

  Widget _buildCard(String name, String company, String data, String img){
    return Padding(padding: EdgeInsets.only(top: 10),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1, 1),
                    blurRadius: 3.0
                )
              ]
          ),
          height: 105,
          child: Row(
            children: [
              Container(
                width: 110,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(img),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  Text(company),
                  Text(data),
                ],
              ))
            ],
          ),
        ),
    );
  }
}