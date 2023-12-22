import 'package:flutter/material.dart';

class SupplierCatalogList extends StatefulWidget {
  const SupplierCatalogList({super.key});

  @override
  State<SupplierCatalogList> createState() => _SupplierCatalogListState();
}

class _SupplierCatalogListState extends State<SupplierCatalogList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ProductItem('Топлённое масло', '13.07.2020'),
        ProductItem('Чай', '13.07.2020'),
        ProductItem('Топлённое масло', '13.07.2020'),
        ProductItem('Чай', '13.07.2020'),
        ProductItem('Топлённое масло', '13.07.2020'),
        ProductItem('Чай', '13.07.2020'),
        ProductItem('Топлённое масло', '13.07.2020'),
        ProductItem('Чай', '13.07.2020'),
      ],
    );
  }
}
class ProductItem extends StatelessWidget {
  final String name;
  final String description;

  ProductItem(this.name, this.description);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Картинка слева
            Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'), // Замените на ваш URL изображения
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.favorite_border),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}