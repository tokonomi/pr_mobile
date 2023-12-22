import 'package:flutter/material.dart';

class SupplierContacts extends StatefulWidget {
  const SupplierContacts({super.key});

  @override
  State<SupplierContacts> createState() => _SupplierContactsState();
}

class _SupplierContactsState extends State<SupplierContacts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTitle('CEO'),
        SizedBox(height: 8.0),
        Row(
          children: [
            buildCircularImage(), // Круглая картинка
            SizedBox(width: 20.0),
            buildThreeTextsColumn(), // Три текста в колонке
          ],
        ),
        SizedBox(height: 8.0),
        buildTitle('Контакты'),
        SizedBox(height: 10.0),
        buildThreeTextsList(),
        SizedBox(height: 8.0),
        buildFullWidthButton('Посмотреть все товары'),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildColumnWithButton('Запрос'),
            buildColumnWithButton('Написать'),
          ],
        ),
      ],
    );
  }
}

Widget buildTitle(String title) {
  return Text(
    title,
    style: TextStyle(
      fontSize: 26.0,
      fontWeight: FontWeight.w500,
    ),
  );
}

Widget buildCircularImage() {
  return Container(
    height: 100.0,
    width: 100.0,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
        image: NetworkImage('https://images.unsplash.com/photo-1664575600796-ffa828c5cb6e?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget buildThreeTextsColumn() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Mr. Joshgun Agayev'),
      SizedBox(height: 5,),
      Text('Должность: Менеджер'),
      SizedBox(height: 2,),
      Text('Город: Баку'),
    ],
  );
}
Widget buildThreeTextsList() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ListItem('+994 55 123 45 67 г.,Баку'),
      ListItem('+994 12 123 45 67 г.,Баку'),
      ListItem('+994 51 123 45 67 г.,Хачмаз'),
    ],
  );
}

Widget buildFullWidthButton(String text) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () {
        // Обработчик нажатия кнопки
      },
      child: Text(text),
    ),
  );
}

Widget buildColumnWithButton(String buttonText) {
  return Column(
    children: [
      ElevatedButton(
        onPressed: () {
          // Обработчик нажатия кнопки
        },
        child: Container(
          width: 120.0,
          child: Center(
            child: Text(buttonText),
          ),
        )
      ),
      SizedBox(height: 8.0),
      // Другие виджеты, если необходимо
    ],
  );
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
          Text(text, style: TextStyle(fontSize: 18),),
        ],
      ),
    );
  }
}
