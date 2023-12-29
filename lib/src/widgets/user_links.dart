import 'package:flutter/material.dart';

class UserLinks extends StatelessWidget {
  const UserLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 16.0, left: 20, right: 20),
        child: Column(
          children: [
            InformationItem(label: 'Личные данные', link1: 'Мой профиль', link2: 'Профиль поставщика', link3: 'Налоговая информация'),
            InformationItem(label: 'Конфиденциальность', link1: 'Изменение э-почты', link2: 'Смена пароля', link3: 'Контрольный вопрос'),
            InformationItem(label: 'Счет', link1: 'Мои транзакции', link2: 'История поступленных заказов', link3: 'Сотрудничество'),
          ],
        ),
    );
  }
}

class InformationItem extends StatelessWidget {
  final String label;

  final String link1;
  final String link2;
  final String link3;

  InformationItem({required this.label, required this.link1, required this.link2, required this.link3});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Text(label, style: TextStyle(fontSize: 24)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.0, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(link1),
                SizedBox(height: 5),
                Text(link2),
                SizedBox(height: 5),
                Text(link3),
              ],
            ),
          )
        ],
      ),
    );
  }
}