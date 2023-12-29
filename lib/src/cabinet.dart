import 'package:flutter/material.dart';

class Cabinet extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                icon: Icon(Icons.home), // Иконка 1
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                  // Обработчик для первой иконки
                }
            ),
            SizedBox(width: 15)
          ],
          title: Text('Мой кабинет'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),
                Text('Добро пожаловать в личный кабинет partner rooms'),
                SizedBox(height: 10),
                Text('В личном кабинете вы сможете найти нужные инструменты для управления своим бизнесом'),
                SizedBox(height: 10),
                Text('Последние заказы'),
                MyCard(),
                Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                        onPressed: () {
                        // Добавьте вашу логику для кнопки "Оставить отзыв" здесь
                        print('Оставить отзыв');
                      },
                        child: Text('Оставить отзыв'),
                      )
                      ),
                      SizedBox(width: 9),
                      Expanded(
                          flex: 2,
                          child: ElevatedButton(
                            onPressed: () {
                              // Добавьте вашу логику для кнопки "Оставить отзыв" здесь
                              print('Оставить отзыв');
                            },
                            child: Text('Дополнительные сведения'),
                          )
                      )
                    ]
                )
              ],
            ),
          ),
        )
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            // Картинка слева
            Image.network(
              'https://images.unsplash.com/photo-1633527992904-53f86f81a23a?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Замените на ваш URL изображения
              width: 80.0,
              height: 80.0,
            ),
            SizedBox(width: 16.0),
            // Текстовые поля в центре
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Вата',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'XaçmazTTF LLC',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'всего: 4000 azn.',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                )
              ],
            ),
            Spacer(), // Равномерно распределяет пространство между детьми
            // Иконка справа
            Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}
