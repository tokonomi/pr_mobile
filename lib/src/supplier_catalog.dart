import 'package:flutter/material.dart';
import 'package:partners_room/src/widgets/home_search.dart';
import 'package:partners_room/src/widgets/supplier_cards.dart';
import 'package:partners_room/src/widgets/supplier_catalog_list.dart';
import 'package:partners_room/src/widgets/supplier_new_cards.dart';

class SupplierCatalog extends StatefulWidget {
  const SupplierCatalog({super.key});

  @override
  State<SupplierCatalog> createState() => _SupplierCatalogState();
}

class _SupplierCatalogState extends State<SupplierCatalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            SizedBox(height: 16),
            Row(
              children: [
                SizedBox(width: 10,),
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.white,
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text(
                        'Категории'
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: Center(
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage('https://images.unsplash.com/photo-1665686308827-eb62e4f6604d?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                    )
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 20),
            fybCard(),
            SizedBox(height: 10),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: SupplierCards(),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: SupplierCardsNew(),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: HomeSearch(),
              ),
            ),
            SupplierCatalogList()
          ],
        ),
      ),
    );
  }
}

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

Widget fybCard(){
  return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
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