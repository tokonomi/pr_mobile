import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  String selectedRegion = '';
  String selectedOption = '';
  TextEditingController inputController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.home), // Иконка 1
            onPressed: () {
              // Обработчик для первой иконки
            },
          ),
          SizedBox(width: 15)
        ],
        title: Text('Регистрация'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Регион:'),
                  DropdownButtonFormField(
                      items: ['item1', 'item2', 'item3'].map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      )).toList(),
                      onChanged: (value){
                        setState(() {
                          selectedRegion = value!;
                        });
                      }
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Text('Цель:'),
              RadioListTile<String>(
                title: Text('Покупки'),
                value: 'Покупки',
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
              ),
              RadioListTile<String>(
                title: Text('Продажа'),
                value: 'Продажа',
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
              ),
              RadioListTile<String>(
                title: Text('Оба'),
                value: 'Оба',
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
              ),
              SizedBox(height: 16.0),
              Text('Электронная почта:'),
              TextFormField(
                controller: inputController,
                decoration: InputDecoration(
                  labelText: 'Электронная почта:',
                ),
              ),
              SizedBox(height: 16.0),
              Text('Пароль:'),
              TextFormField(
                controller: inputController,
                decoration: InputDecoration(
                  labelText: 'Пароль',
                ),
              ),
              SizedBox(height: 16.0),
              Text('Повторите пароль:'),
              TextFormField(
                controller: inputController,
                decoration: InputDecoration(
                  labelText: 'Повторите пароль',
                ),
              ),
              SizedBox(height: 16.0),
              Text('Имя:'),
              TextFormField(
                controller: inputController,
                decoration: InputDecoration(
                  labelText: 'Имя',
                ),
              ),
              SizedBox(height: 16.0),
              Text('Фамилия:'),
              TextFormField(
                controller: inputController,
                decoration: InputDecoration(
                  labelText: 'Фамилия',
                ),
              ),
              SizedBox(height: 16.0),
              Text('Название компании:'),
              TextFormField(
                controller: inputController,
                decoration: InputDecoration(
                  labelText: 'Название компании, бренда',
                ),
              ),
              SizedBox(height: 16.0),
              RadioListTile<String>(
                title: Text('У меня нету компании'),
                value: 'Оба',
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
              ),
              SizedBox(height: 16.0),
              Text('Номер телефона'),
              TextFormField(
                controller: inputController,
                decoration: InputDecoration(
                  labelText: '+994 55 123 45 65',
                ),
              ),
              SizedBox(height: 16.0),
              Text('Название компании:'),
              TextFormField(
                controller: inputController,
                decoration: InputDecoration(
                  labelText: 'Название компании',
                ),
              ),
              SizedBox(height: 46.0),
              RadioListTile<String>(
                title: Text('Я соглашаюсь с условиями и правилами программы'),
                value: 'Оба',
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  // Добавьте вашу логику обработки формы здесь
                  print('Selected Option: $selectedOption');
                  print('Additional Input: ${inputController.text}');
                },
                child: Text('Регистрация'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}