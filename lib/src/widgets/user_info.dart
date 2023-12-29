import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        InformationItem(label: 'Ваш partnerId:', value: 'az29359728681zhgu'),
        InformationItem(label: 'E-mail:', value: 'ttext@gmail.com'),
        InformationItem(label: 'Телефон:', value: '+994559235521'),
      ],
    );
  }
}

class InformationItem extends StatelessWidget {
  final String label;
  final String value;

  InformationItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.0, left: 20, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 8.0),
          Text(
            value,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}