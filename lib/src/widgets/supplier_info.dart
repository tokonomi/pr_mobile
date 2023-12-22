import 'package:flutter/material.dart';
import 'package:partners_room/src/widgets/supplier_cards.dart';
import 'package:partners_room/src/widgets/supplier_contacts.dart';

class SupplierInfo extends StatefulWidget {
  const SupplierInfo({super.key});

  @override
  State<SupplierInfo> createState() => _SupplierInfoState();
}

class _SupplierInfoState extends State<SupplierInfo> {
  @override

  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 26.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Об Material metal',
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Дополнительные данные',
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListItem('4 года сотрудничества'),
                  ListItem('150 сотрудников'),
                  ListItem('120,000 успещных сделок'),
                  ListItem('Подтверждённый поставщик'),
                ],
              ),
              SizedBox(height: 8.0),
              SupplierCards(),
              SizedBox(height: 8.0),
              SupplierContacts()
            ],
          ),
        ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String text;

  ListItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: Colors.green),
          SizedBox(width: 8.0),
          Text(text),
        ],
      ),
    );
  }
}
